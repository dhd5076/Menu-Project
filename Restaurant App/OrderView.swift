//
//  OrderView.swift
//  Restaurant App
//
//  Created by Dylan Dunn on 5/7/20.
//  Copyright © 2020 Dylan Dunn. All rights reserved.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject public var order : Order
    
    var body: some View {
        VStack {
            List {
                ForEach(order.orderItems) { orderItem in
                    OrderItemView(itemPicture: orderItem.itemPicture, itemName: orderItem.itemName)
                }
            }
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    public var order = Order()
    
    static var previews: some View {
        OrderView()
    }
}
