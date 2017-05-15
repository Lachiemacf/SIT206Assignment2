//
//  ViewController.swift
//  Run Calendar Maker
//
//  Created by LACHLAN EDWARD MACFARLANE on 27/04/2017.
//  Copyright © 2017 Lachie+Vino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var lengthOfProgram: UITextField!
    @IBOutlet weak var tenkbutton: UISwitch!
    @IBOutlet weak var twentyonekbutton: UISwitch!
    @IBOutlet weak var fortytwokbutton: UISwitch!
    @IBOutlet weak var custombutton: UISwitch!
    @IBOutlet weak var custonedittext: UITextField!
    @IBOutlet weak var dateOutlet: UIDatePicker!
    
    
    @IBAction func generate(_ sender: UIButton) {
        performSegue(withIdentifier: "submissionSegue", sender: self)
        
        
    }
    
    @IBAction func tenkbuton(_ sender: UISwitch) {
        twentyonekbutton.isOn = false
        fortytwokbutton.isOn = false
        custombutton.isOn = false
        custonedittext.isEnabled = false
    }
    
    @IBAction func twentyonekbutton(_ sender: UISwitch) {
        tenkbutton.isOn = false
        fortytwokbutton.isOn = false
        custombutton.isOn = false
        custonedittext.isEnabled = false
    }
    
    @IBAction func fortytwokbutton(_ sender: UISwitch) {
        twentyonekbutton.isOn = false
        tenkbutton.isOn = false
        custombutton.isOn = false
        custonedittext.isEnabled = false
    }
    
    @IBAction func custombutton(_ sender: UISwitch) {
        twentyonekbutton.isOn = false
        fortytwokbutton.isOn = false
        tenkbutton.isOn = false
        custonedittext.isEnabled = true
    }
    
     func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        // Create a new variable to store the instance of the next view controller
        let destinationVC = segue.destination as! RunCalenderTableViewController
        
        destinationVC.tenkbutton = tenkbutton.isOn
        destinationVC.lengthOfProgram = lengthOfProgram.text!
        destinationVC.twentyonekbutton = twentyonekbutton.isOn
        destinationVC.fortytwokbutton = fortytwokbutton.isOn
        destinationVC.custombutton = custombutton.isOn
        destinationVC.custonedittext = custonedittext.text!
    }
    
    // getting length of program
   // @IBAction func getVal () {
        //let lengthProgramText: String = lengthOfProgram.text!
        //Int.self; lengthOfProgram = Int(lengthProgramText)
     //   Int value = [[lengthOfProgram.text] intValue];
    
 
  //  }
    
    
    //@IBAction func generate(_ sender: UIButton) {
        

        
  //  }
    
  //  class Trip {
    //    let lengthProgramText: String = lengthOfProgram.text!
    //    var lengthProgramNum = Int(lengthProgramText)
        
        
  ///  }
    
}

