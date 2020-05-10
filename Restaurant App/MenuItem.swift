//
//  OrderItem.swift
//  Restaurant App
//
//  Created by Dylan Dunn on 5/8/20.
//  Copyright © 2020 Dylan Dunn. All rights reserved.
//

import SwiftUI

struct MenuItem : Identifiable {
    public var itemPicture : String
    public var itemName : String
    public var itemCost : Float
    public let itemDescription : String
    public var id = UUID()
}
