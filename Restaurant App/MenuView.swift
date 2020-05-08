//
//  MenuView.swift
//  Restaurant App
//
//  Created by Dylan Dunn on 5/7/20.
//  Copyright © 2020 Dylan Dunn. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            List {
                MenuCategoryView(categoryPicture: "B", categoryName: "Breakfast", destination: BreakfastView())
                MenuCategoryView(categoryPicture: "E", categoryName: "Entrées", destination: EntreesView())
                MenuCategoryView(categoryPicture: "S", categoryName: "Sides", destination: SidesView())
                MenuCategoryView(categoryPicture: "K", categoryName: "Kids", destination: KidsView())
                MenuCategoryView(categoryPicture: "B", categoryName: "Beverages", destination: BeveragesView())
                MenuCategoryView(categoryPicture: "D", categoryName: "Desserts", destination: DessertsView())
            }
            .navigationBarTitle("Menu")
        }
    }
}

struct MenuCategoryView<Content : View >: View {
    @State public var categoryPicture : String
    @State public var categoryName : String
    @State public var destination: Content
    
    var body : some View {
        NavigationLink(destination: destination) {
            HStack {
                Text(self.categoryPicture)
                .frame(width: 64, height: 64)
                Text(self.categoryName)
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
