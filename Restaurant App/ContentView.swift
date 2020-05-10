//
//  ContentView.swift
//  Restaurant App
//
//  Created by Dylan Dunn on 5/7/20.
//  Copyright © 2020 Dylan Dunn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            MenuView()
                .font(.title)
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Menu")
                }
                .tag(0)
            OrderView()
                .font(.title)
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
                .tag(1)
        }
        .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().environment(\.colorScheme, .dark)
            
            ContentView().environment(\.colorScheme, .light)
        }
    }
}
