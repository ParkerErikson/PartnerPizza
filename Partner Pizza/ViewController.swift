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
        //create Pizza object(s)
        
        //place order with all pizzas
        
        //place order should call add pizza to queue
        
        //verify the order
        
        //tell time to ready
    }
    
    var pizzaArray = [Pizza]()
    
    
    func addPizzaToQueue(_ pizza: Pizza) {
        
        pizzaArray.append(pizza)
    }
    
    func timeUntilReady() -> Int {
        return 10 * pizzaArray.count
    }
    
    func placeOrder(forDelivery delivery: Bool, order: [Pizza]) -> Double {
        let p1 = Pizza(size: .small, crust: .handTossed, toppings: [.beef], sauce: .white)
        return p1.cost
    }
    
    func verifyOrder(order: [Pizza]) -> [String] {
        var orderPizza : String?
        for pizza in order{
          orderPizza = "\(pizza)"
        }
        
        return [orderPizza!]
        
    }
}
