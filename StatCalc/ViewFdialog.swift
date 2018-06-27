//
//  ViewFdialog.swift
//  StatCalc
//
//  Created by Михаил Грушко on 11/27/16.
//  Copyright © 2016 Grushko/Dahl. All rights reserved.
//

import Foundation
import UIKit

class ViewFdialog: UIViewController {

    // Outlets for the text fields and for the button
    @IBOutlet weak var chisq1: UITextField!
    @IBOutlet weak var chisq2: UITextField!
    @IBOutlet weak var dof1: UITextField!
    @IBOutlet weak var dof2: UITextField!
    
    // Makes the keyboard go away upon touching anywhere
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        chisq1.keyboardType = UIKeyboardType.decimalPad
        chisq2.keyboardType = UIKeyboardType.decimalPad
        dof1.keyboardType = UIKeyboardType.decimalPad
        dof2.keyboardType = UIKeyboardType.decimalPad

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // function that makes a segue conditional
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "Fresponse") {
            
            // references the next view controller
            let fview = segue.destination as! ViewFans;
            
            // transfers data to the text view controller
            fview.chisq1 = chisq1.text!
            fview.chisq2 = chisq2.text!
            fview.dof1 = dof1.text!
            fview.dof2 = dof2.text!
            
        }
    
    }

}
