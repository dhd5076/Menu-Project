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
            MenuItemListView(menuItem: MenuItem(
                itemPicture: "https://i.pinimg.com/474x/f9/d8/31/f9d8312ded6f98a442df6b14376b329f--healthy-sandwiches-grilled-cheese-sandwiches.jpg",
                itemName: "Turkey Panini",
                itemCost: 4.99,
                itemDescription: "House made foccacia filled with turkey, bacon, and tomatoes"))
            MenuItemListView(menuItem: MenuItem(
                itemPicture:
                "https://i.pinimg.com/474x/1f/ee/60/1fee603ac70d05e65b02f3873cf0c747--easy-french-onion-soup-classic-french-onion-soup.jpg",
                itemName: "French Onion Soup",
                itemCost: 4.99,
                itemDescription: "Perfect on a chilly day; Hot, savory, and satisfying"))
            MenuItemListView(menuItem: MenuItem(
                itemPicture: "https://photos.bigoven.com/recipe/hero/tasty-cheeseburger-dinner.jpg?h=500&w=500",
                itemName: "Cheeseburger",
                itemCost: 4.99,
                itemDescription: "Juicy, savory burgers topped with cheese, onions, and tomatoes"))
            MenuItemListView(menuItem: MenuItem(
                itemPicture: "https://photos.bigoven.com/recipe/hero/pesto-pasta.jpg?h=500&w=500",
                itemName: "Fresh Basil and Pesto Pasta",
                itemCost: 4.99,
                itemDescription: "Fresh, bright, and rich pesto atop delicate pasta"))
        }
        .navigationBarTitle("Entrées")
    }
}

struct EntreesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EntreesView()
        }
    }
}
