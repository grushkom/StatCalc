//
//  ViewZans.swift
//  StatCalc
//
//  Created by Михаил Грушко on 11/27/16.
//  Copyright © 2016 Grushko/Dahl. All rights reserved.
//

import Foundation
import UIKit

class ViewZans: UIViewController {
    
    // Outlets to labels
    @IBOutlet weak var GivenP: UILabel!
    @IBOutlet weak var zeq: UILabel!
    
    
    // empty storages for receiving data from another view controller
    var deltamu: String = ""
    var sigma: String = ""
    
    override func viewDidLoad() {

        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // validating the input (if invalid - error message)
        if Float(deltamu) == nil || Float(sigma) == nil {
            
            GivenP.text = "Please provide valid input"
            zeq.text = "Enter numeric values"
            
        }
        
        else {
            
            // printing the results of the computation on the screen
            GivenP.text = "Given Δμ = \(deltamu) and σ² = \(sigma)"
            zeq.text = "z = " + String(Float(deltamu)!/sqrt(Float(sigma)!))
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
