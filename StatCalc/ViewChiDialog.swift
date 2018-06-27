//
//  ViewChiDialog.swift
//  StatCalc
//
//  Created by Михаил Грушко on 11/28/16.
//  Copyright © 2016 Grushko/Dahl. All rights reserved.
//

import Foundation
import UIKit

class ViewChiDialog: UIViewController {
    
    // Outlets for the text fields and for the button
    @IBOutlet weak var popsigma: UITextField!
    @IBOutlet weak var samplesigma: UITextField!
    @IBOutlet weak var size: UITextField!
    
    // Makes the keyboard go away upon touching anywhere
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        popsigma.keyboardType = UIKeyboardType.decimalPad
        samplesigma.keyboardType = UIKeyboardType.decimalPad
        size.keyboardType = UIKeyboardType.decimalPad
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // function that makes a segue conditional
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "Chiresponse") {
            
            // references the next view controller
            let chiview = segue.destination as! ViewChians;
            
            // transfers data to the text view controller
            chiview.popsigma = popsigma.text!
            chiview.samplesigma = samplesigma.text!
            chiview.size = size.text!
            
        }
    }
}
