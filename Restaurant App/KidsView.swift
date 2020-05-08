//
//  KidsView.swift
//  Restaurant App
//
//  Created by Dylan Dunn on 5/8/20.
//  Copyright © 2020 Dylan Dunn. All rights reserved.
//

import SwiftUI

struct KidsView: View {
    var body: some View {
        List {
            MenuItemListView(menuItem: MenuItem(itemPicture: "📗 ", itemName: "French Toast", itemCost: 4.99))
        }
        .navigationBarTitle("Breakfast")
    }
}

struct KidsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            KidsView()
        }    }
}
