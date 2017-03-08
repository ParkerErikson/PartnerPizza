//
//  Pizza.swift
//  Partner Pizza
//
//  Created by Andrew Strange on 3/8/17.
//  Copyright © 2017 Parker Erikson. All rights reserved.
//

import Foundation

class Pizza {
    var size : Size
    var toppings : [Toppings]
    var sauce : Sauce
    var cost : Double
    var crust : Crust
    var description : String
    
    init(size : Size, crust : Crust, toppings : [Toppings], sauce : Sauce) {
        self.size = size
        self.sauce = sauce
        self.toppings = toppings
        self.crust = crust
        
        var temp : Double = 0.0
        switch size {
        case .small:
            temp = 4.00
        case .medium:
            temp = 8.99
        case .large:
            temp = 10.99
        }
        
        self.cost = temp * (1.50 * Double(toppings.count))
        var tops : String = ""
        for (i, topping) in toppings.enumerated() {
            tops += "\(topping.rawValue)"
            if i < toppings.count - 2 {
                tops += " "
            }
            else if i == toppings.count - 2 {
                tops += " and "
            }
        }
        self.description = "\(size.rawValue) \(crust.rawValue) with \(tops)"
    }
}

enum Crust : String {
    case thin = "Thin"
    case handTossed = "Hand Tossed"
    case pan = "Pan"
}

enum Sauce : String {
    case red = "Red"
    case white = "White"
    case none = "No"
}

enum Size : String {
    case small = "Small"//4.00
    case medium = "Medium"//8.99
    case large = "Large"//10.99
}

enum Toppings : String {
    case greenPepper = "Green Pepper"
    case ham = "Ham"
    case hotPepper = "Hot Pepper"
    case mushroom = "Mushroom"
    case blackOlives = "Black Olives"
    case greenOlives = "Green Olives"
    case redOnion = "Red Onion"
    case beef = "Beef"
    case grilledChicken = "Grilled Chicken"
    case pepperoni = "Pepperoni"
    case pinapple = "Pineapple"
    case tomato = "Tomato"
    case italianSausage = "Italian Sausage"
    case mildSausage = "Mild Sausage"
    case bacon = "Bacon"
    case anchovy = "Anchovy"
}
