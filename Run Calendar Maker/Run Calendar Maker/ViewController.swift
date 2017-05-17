//
//  ViewController.swift
//  Run Calendar Maker
//
//  Created by LACHLAN EDWARD MACFARLANE on 27/04/2017.
//  Copyright © 2017 Lachie+Vino. All rights reserved.
//

import UIKit
import CoreData
var temp = Date()
var db = Database(totalWeeksref : 0, typeDateref : temp,currentDistanceRinningref : 0, distanceref : 0, parkRunref : false)
class ViewController: UIViewController {
    
    var distance : Double = 0.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        custonedittext.isEnabled = false
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
    @IBOutlet weak var parkRunSwitch: UISwitch!
    @IBOutlet weak var currentDistance: UITextField!
    
    
    @IBAction func generate(_ sender: UIButton) {
        var temp : String = lengthOfProgram.text!
        var temp2 : Int = Int(temp)!
        
        db = Database(totalWeeksref : Int(temp2), typeDateref : dateOutlet.date,currentDistanceRinningref : Double(currentDistance.text!)!, distanceref : distance, parkRunref : parkRunSwitch.isOn)
        
    }
    
    
    @IBAction func tenkbuton(_ sender: UISwitch) {
        twentyonekbutton.isOn = false
        fortytwokbutton.isOn = false
        custombutton.isOn = false
        custonedittext.isEnabled = false
        distance = 10
    }
    
    @IBAction func twentyonekbutton(_ sender: UISwitch) {
        tenkbutton.isOn = false
        fortytwokbutton.isOn = false
        custombutton.isOn = false
        custonedittext.isEnabled = false
        distance = 21.1
    }
    
    @IBAction func fortytwokbutton(_ sender: UISwitch) {
        twentyonekbutton.isOn = false
        tenkbutton.isOn = false
        custombutton.isOn = false
        custonedittext.isEnabled = false
        distance = 41.195
    }
    
    @IBAction func custombutton(_ sender: UISwitch) {
        twentyonekbutton.isOn = false
        fortytwokbutton.isOn = false
        tenkbutton.isOn = false
        custonedittext.isEnabled = true
        distance = Double(custonedittext.text!)!
    }
    
     func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        // Create a new variable to store the instance of the next view controller
        let destinationVC = segue.destination as! RunCalenderTableViewController
        destinationVC.detebese = db
        

}
}



