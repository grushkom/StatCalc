//
//  ViewChians.swift
//  StatCalc
//
//  Created by Михаил Грушко on 11/28/16.
//  Copyright © 2016 Grushko/Dahl. All rights reserved.
//

import Foundation
import UIKit

class ViewChians: UIViewController {
    
    // Outlets to labels
    @IBOutlet weak var Givenn: UILabel!
    @IBOutlet weak var chisqans: UILabel!
    @IBOutlet weak var Givens: UILabel!

    // empty storages for receiving data from another view controller
    var samplesigma: String = ""
    var popsigma: String = ""
    var size: String = ""

    
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
        
        // validating the input (if invalid - error message)
        if Float(samplesigma) == nil || Float(popsigma) == nil || Float(size) == nil {
            
            Givens.text = "Please provide valid input"
            Givenn.text = ""
            chisqans.text = "Enter numeric values"
        
        }
   
        else {
            
            // printing the results of the computation on the screen
            Givens.text = "Given s = \(samplesigma) and σ = \(popsigma)"
            Givenn.text = "Given \(size) sample size"
            chisqans.text = "χ² = " + String((Float(samplesigma)!*Float(samplesigma)!*(Float(size)!+1))/(Float(popsigma)!*Float(popsigma)!))
            
        }
}

    override func didReceiveMemoryWarning() {
    
        super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }


}
