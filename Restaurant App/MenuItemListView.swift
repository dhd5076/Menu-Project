//
//  ListItemView.swift
//  Restaurant App
//
//  Created by Dylan Dunn on 5/7/20.
//  Copyright © 2020 Dylan Dunn. All rights reserved.
//

import SwiftUI

struct MenuItemListView: View {
    @State public var menuItem : MenuItem
    
    var body: some View {
        NavigationLink(destination: MenuItemView(menuItem: menuItem)) {
            HStack {
                Text(self.menuItem.itemPicture)
                .frame(width: 64, height: 64)
                Text(self.menuItem.itemName)
            }
        }
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List {
                MenuItemListView(menuItem: MenuItem(itemPicture: "P", itemName: "Example Item", itemCost: 1.99))
            }
        }
    }
}
