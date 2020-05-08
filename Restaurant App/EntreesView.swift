//
//  EntreesView.swift
//  Restaurant App
//
//  Created by Dylan Dunn on 5/7/20.
//  Copyright © 2020 Dylan Dunn. All rights reserved.
//

import SwiftUI

struct EntreesView: View {
    var body: some View {
        List {
            MenuItemListView(menuItem: MenuItem(itemPicture: "📗 ", itemName: "French Toast", itemCost: 4.99))
        }
        .navigationBarTitle("Breakfast")
    }
}

struct EntreesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EntreesView()
        }
    }
}
