//
//  KidsView.swift
//  Restaurant App
//
//  Created by Dylan Dunn on 5/8/20.
//  Copyright © 2020 Dylan Dunn. All rights reserved.
//

import SwiftUI

struct SaladsView: View {
    var body: some View {
        List {
            MenuItemListView(menuItem: MenuItem(
                itemPicture: "https://photos.bigoven.com/recipe/hero/broccoli-salad-9.jpg?h=500&w=500",
                itemName: "Broccoli Salad",
                itemCost: 4.99,
                itemDescription: "Fresh broccoli florets, red onions, cheddar cheese, and crumbled bacon"))
            MenuItemListView(menuItem: MenuItem(
                itemPicture: "https://photos.bigoven.com/recipe/hero/caesar-salad-dressing-8174e6.jpg?h=500&w=500",
                itemName: "Caesar Salad",
                itemCost: 4.99,
                itemDescription: "Crisp romaine lettuce, parmesan cheese, croutons, and chicken breast. Served with caesar dressing"))
            MenuItemListView(menuItem: MenuItem(
                itemPicture: "https://photos.bigoven.com/recipe/hero/apple-cranberry-walnut-salad-1229408.jpg?h=500&w=500",
                itemName: "Cranberry Walnut Salad",
                itemCost: 4.99,
                itemDescription: "Spring lettuce, dried cranberries, blue cheese, mandarin oranges, and croutons. Served with raspberry vinaigrette"))
        }
        .navigationBarTitle("Salads")
    }
}

struct SaladsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SaladsView()
        }    }
}
