//
//  SidesView.swift
//  Restaurant App
//
//  Created by Dylan Dunn on 5/8/20.
//  Copyright © 2020 Dylan Dunn. All rights reserved.
//

import SwiftUI

struct SidesView: View {
    var body: some View {
        List {
            MenuItemListView(menuItem: MenuItem(
                itemPicture: "https://photos.bigoven.com/recipe/hero/garlic-mashed-potatoes-39.jpg?h=500&w=500",
                itemName: "Garlic Mashed Potatoes",
                itemCost: 4.99,
                itemDescription: "Hot, rich, and fluffy potatoes with a garlicky twist"))
            MenuItemListView(menuItem: MenuItem(
                itemPicture: "https://photos.bigoven.com/recipe/hero/mac-and-cheese-6.jpg?h=500&w=500",
                itemName: "Macaroni and Cheese",
                itemCost: 4.99,
                itemDescription: "Cheesy baked mac and cheese"))
            MenuItemListView(menuItem: MenuItem(
                itemPicture: "https://photos.bigoven.com/recipe/hero/all-star-french-fries-dd49eb.jpg?h=500&w=500",
                itemName: "French Fries",
                itemCost: 4.99,
                itemDescription: "Crispy hand-cut fries"))
            MenuItemListView(menuItem: MenuItem(
                itemPicture: "https://photos.bigoven.com/recipe/hero/citrus-herb-grilled-vegetables-6.jpg?h=500&w=500",
                itemName: "Grilled Vegetable Medley",
                itemCost: 4.99,
                itemDescription: "A seasonal mix of grilled vegetables"))
        }
        .navigationBarTitle("Sides")
    }
}

struct SidesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SidesView()
        }
    }
}
