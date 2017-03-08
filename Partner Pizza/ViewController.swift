//
//  ViewController.swift
//  Partner Pizza
//
//  Created by Parker Erikson on 3/8/17.
//  Copyright © 2017 Parker Erikson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, IPizza  {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var pizzaArray = [Pizza]()
    let p1 = Pizza(size: .small, crust: .handTossed, toppings: [Toppings(rawValue: "Beef")!], sauce: .white)
    
    func addPizzaToQueue(_ pizza: Pizza) {
        
        pizzaArray.append(pizza)
    }
    
    func timeUntilReady() -> Int {
        return 10 * pizzaArray.count
    }
    
    func placeOrder(forDelivery delivery: Bool, order: [Pizza]) -> Double {
        return p1.cost
    }
    
    func verifyOrder() -> [String] {
        return [p1.description]
    }
}
