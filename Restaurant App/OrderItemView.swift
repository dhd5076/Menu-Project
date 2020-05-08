//
//  OrderItemView.swift
//  Restaurant App
//
//  Created by Dylan Dunn on 5/8/20.
//  Copyright © 2020 Dylan Dunn. All rights reserved.
//

import SwiftUI

struct OrderItemView: View {
    @State public var itemPicture : String
    @State public var itemName : String
    
    var body: some View {
        HStack {
            Text(itemPicture)
            .frame(width: 64, height: 64)
            Text(itemName)
        }
    }
}

struct OrderItemView_Previews: PreviewProvider {
    static var previews: some View {
        OrderItemView(itemPicture: "0", itemName: "0")
    }
}
