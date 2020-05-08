//
//  MenuItemView.swift
//  Restaurant App
//
//  Created by Dylan Dunn on 5/7/20.
//  Copyright © 2020 Dylan Dunn. All rights reserved.
//

import SwiftUI
import URLImage

struct MenuItemView: View {
    @State public var menuItem: MenuItem
    
    @EnvironmentObject public var order : Order
    
    var body: some View {
        VStack(spacing: 12) {
            URLImage(URL(string: "https://via.placeholder.com/350x200")!) { proxy in
                proxy.image
                    .resizable()
            }
                .frame(maxHeight: 200)
            HStack {
                Text("$\(String(format: "%.2f", self.menuItem.itemCost))")
                    .font(.headline)
                Spacer()
            }
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            Button(action: {
                self.order.orderItems.append(MenuItem(itemPicture: self.menuItem.itemPicture, itemName: self.menuItem.itemName, itemCost: self.menuItem.itemCost))
            }) {
                Text("Add To Order")
                    .font(.title)
            }
            .padding(12)
            .frame(maxWidth: .infinity)
            .accentColor(Color.white)
            .background(Color.blue)
            .cornerRadius(1280)
        }
        .padding(12)
        .navigationBarTitle(self.menuItem.itemName)
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MenuItemView(menuItem: MenuItem(itemPicture: "P", itemName: "Example Item", itemCost: 1.99))
        }
    }
}
