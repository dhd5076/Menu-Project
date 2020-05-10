//
//  ListItemView.swift
//  Restaurant App
//
//  Created by Dylan Dunn on 5/7/20.
//  Copyright © 2020 Dylan Dunn. All rights reserved.
//

import SwiftUI
import URLImage

struct MenuItemListView: View {
    @State public var menuItem : MenuItem
    
    var body: some View {
        NavigationLink(destination: MenuItemView(menuItem: menuItem)) {
            HStack {
                URLImage(URL(string: menuItem.itemPicture)!) { proxy in
                    proxy.image
                        .resizable()
                }
                .frame(width: 64, height: 64)
                .cornerRadius(12)
                Text(self.menuItem.itemName)
            }
        }
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List {
                MenuItemListView(menuItem: MenuItem(
                    itemPicture: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg/1599px-Good_Food_Display_-_NCI_Visuals_Online.jpg",
                    itemName: "Example Item",
                    itemCost: 1.99,
                    itemDescription: "Example Description"))
            }
        }
    }
}
