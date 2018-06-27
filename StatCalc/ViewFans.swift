//
//  ViewFans.swift
//  StatCalc
//
//  Created by Михаил Грушко on 11/28/16.
//  Copyright © 2016 Grushko/Dahl. All rights reserved.
//

import Foundation
import UIKit

class ViewFans: UIViewController {
    
    // Outlets to labels
    @IBOutlet weak var Givendof: UILabel!
    @IBOutlet weak var Givenx: UILabel!
    @IBOutlet weak var feq: UILabel!
    
    // empty storages for receiving data from another view controller
    var chisq1: String = ""
    var chisq2: String = ""
    var dof1: String = ""
    var dof2: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // validating the input (if invalid - error message)
        if Float(chisq1) == nil || Float(chisq2) == nil || Float(dof1) == nil || Float(dof2) == 1 {
            
            Givenx.text = "Please provide valid input"
            Givendof.text = ""
            feq.text = "Enter numeric values"
            
        }
            
        else {
            
            // printing the results of the computation on the screen
            Givenx.text = "Given χ²(1) = \(chisq1) and χ²(2) = \(chisq2)"
            Givendof.text = "Given \(dof1) d.o.f. (1) and \(dof2) d.o.f. (2)"
            feq.text = "F = " + String((Float(chisq1)!*Float(dof2)!)/((Float(chisq2))!*(Float(dof1))!))
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
