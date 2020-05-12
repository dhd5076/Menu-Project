//
//  OrderPreparationView.swift
//  Restaurant App
//
//  Created by Dylan Dunn on 5/11/20.
//  Copyright © 2020 Dylan Dunn. All rights reserved.
//

import SwiftUI

struct OrderPreparationView: View {
    @Binding public var isShowing : Bool
    @State public var color = Color.red
    @State public var text = "Cancel Order"
    var body: some View {
        VStack {
            Spacer()
            OrderStatusBar(buttonColor: self.$color, buttonText: self.$text)
            Spacer()
            Button(action: {
                self.isShowing = false
            }) {
                Text(self.text)
                    .font(.title)
                    .foregroundColor(.white)
            }
            .padding(12)
            .frame(maxWidth: .infinity)
            .accentColor(Color.white)
            .background(self.color)
            .cornerRadius(12)
        }
        .padding(12)
        .onAppear() {
            sendNotification(title: "Order Placed!", content: "We've received your order", timeDelay: 1)
            sendNotification(title: "Order Accepted!", content: "Your order has been accepted", timeDelay: 2.5)
            sendNotification(title: "Preparing Order", content: "Your order is being prepared", timeDelay: 5)
            sendNotification(title: "Order Ready!", content: "Your order is ready for pickup", timeDelay: 10)
        }
        .navigationBarTitle("Order Status")
    }
    
}

func sendNotification(title : String, content : String, timeDelay : Double) {
    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: { success, error in
        if(success) {
            let notificationContent = UNMutableNotificationContent()
            notificationContent.title = title
            notificationContent.body = content
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: timeDelay, repeats: false)
            
            let request = UNNotificationRequest(identifier: UUID().uuidString, content: notificationContent, trigger: trigger)
            
            UNUserNotificationCenter.current().add(request)
        }
    })
}

struct OrderStatusBar : View {
    @Binding public var buttonColor : Color
    @Binding public var buttonText : String
    @State var progress : CGFloat = 0.0
    @State var color : Color = Color.blue
    @State var text : String = ""
    @State var radius : CGFloat = 175
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            Circle()
                .fill()
                .foregroundColor(color)
                .frame(width: radius, height: radius)
            Circle()
                .trim(from: 0.0, to: progress)
                .stroke(color, lineWidth: 15)
                .frame(width: 300, height: 300)
            Text(text)
                .foregroundColor(.white)
                .font(.title)
        }
        .onReceive(timer) { input in
            if(self.progress < 1.00) {
                if(self.progress < 0.25) {
                    self.text = "Order Placed"
                }
                if(self.progress > 0.25) {
                    withAnimation(.easeInOut(duration: 1)) {
                        self.text = "Order Accepted"
                        self.radius = 225
                    }
                }
                if(self.progress > 0.5) {
                    withAnimation(.easeInOut(duration: 1)) {
                        self.text = "Preparing Order"
                        self.radius = 250
                        self.buttonColor = Color.gray
                        self.buttonText = "Order Placed"
                    }
                }
                if(self.progress > 0.99) {
                    withAnimation(.easeInOut(duration: 1)) {
                        self.color = Color.green
                        self.text = "Order Ready!"
                        self.radius = 300
                        self.buttonColor = Color.green
                        self.buttonText = "Confirm Pickup"
                    }
                }
                withAnimation(.easeInOut) {
                    self.progress += 0.01
                }
            }
        }
    }
}

struct OrderPreparationView_Previews: PreviewProvider {
    @State public var isShowing: Bool = true
    static var previews: some View {
        OrderView().environmentObject(Order())
    }
}
