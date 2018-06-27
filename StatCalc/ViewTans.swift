//
//  ViewTans.swift
//  StatCalc
//
//  Created by Михаил Грушко on 11/27/16.
//  Copyright © 2016 Grushko/Dahl. All rights reserved.
//

import Foundation
import UIKit

class ViewTans: UIViewController {
    
    // Outlets to labels
    @IBOutlet weak var Given: UILabel!
    @IBOutlet weak var Givendof: UILabel!
    @IBOutlet weak var teq: UILabel!
    
    // empty storages for receiving data from another view controller
    var deltamu: String = ""
    var sigma: String = ""
    var dof: String = ""
    
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // validating the input (if invalid - error message)
        if Float(deltamu) == nil || Float(sigma) == nil || Float(dof) == nil {
            
            Given.text = "Please provide valid input"
            Givendof.text = ""
            teq.text = "Enter numeric values"
            
        }
        else {
            
            // printing the results of the computation on the screen
            Given.text = "Given Δμ = \(deltamu) and σ² = \(sigma)"
            Givendof.text = "Given \(dof) d.o.f."
            teq.text = "t = " + String(Float(deltamu)!/(sqrt(Float(sigma)!)/(sqrt(Float(dof)!+1))))
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
