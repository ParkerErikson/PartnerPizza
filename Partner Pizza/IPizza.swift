//
//  IPizza.swift
//  Partner Pizza
//
//  Created by Andrew Strange on 3/8/17.
//  Copyright © 2017 Parker Erikson. All rights reserved.
//

import Foundation

protocol IPizza {
    func addPizzaToQueue(_ pizza : Pizza) -> Void
    func timeUntilReady() -> Int
    func placeOrder(forDelivery delivery : Bool, order : [Pizza]) -> Double //cost of entire order
    func verifyOrder() -> [String] //list of descriptions of each pizza ordered.
}

