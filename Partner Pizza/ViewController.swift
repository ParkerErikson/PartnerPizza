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
    
    func addPizzaToQueue(_ pizza: Pizza) {
        
        pizzaArray.append(pizza)
    }
    
    func timeUntilReady() -> Int {
        return 10 * pizzaArray.count
    }
    
    func placeOrder(forDelivery delivery: Bool, order: [Pizza]) -> Double {
        return 
    }
    
    func verifyOrder() -> [String] {
       
    }
}
