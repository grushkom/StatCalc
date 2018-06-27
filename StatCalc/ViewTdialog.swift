//
//  ViewTdialog.swift
//  StatCalc
//
//  Created by Михаил Грушко on 11/27/16.
//  Copyright © 2016 Grushko/Dahl. All rights reserved.
//

import Foundation
import UIKit

class ViewTdialog: UIViewController {
    
    // Outlets for the text fields and for the button
    @IBOutlet weak var deltamu: UITextField!
    @IBOutlet weak var sigma: UITextField!
    @IBOutlet weak var dof: UITextField!
    
    // Makes the keyboard go away upon touching anywhere
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        deltamu.keyboardType = UIKeyboardType.decimalPad
        sigma.keyboardType = UIKeyboardType.decimalPad
        dof.keyboardType = UIKeyboardType.decimalPad
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // function that makes a segue conditional
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "Tresponse") {
            
            // references the next view controller
            let tview = segue.destination as! ViewTans;
            
            // transfers data to the text view controller
            tview.deltamu = deltamu.text!
            tview.sigma = sigma.text!
            tview.dof = dof.text!
            
        }
    }
}
