//
//  Week.swift
//  Run Calendar Maker
//
//  Created by SCENSIVINO BEAN on 15/05/2017.
//  Copyright © 2017 Lachie+Vino. All rights reserved.
//

import UIKit

class Week: NSObject {
    
    
    // Specify date components
    init(weekNumber : Int, totalWeeks : Int, monthDate : Int, yearDate : Int, dayDate : Int, currentDistanceRinning : Double, distance : Double, parkRun : Bool){
        
        var date : String
        var mon : String = "rest"
        var tues : String = "rest"
        var wed : String = "rest"
        var thrus : String = "rest"
        var fri : String = "rest"
        var sat : String = "rest"
        var sun : String = "rest"
        var stride : Double
        var newTime : String
        var length : Double = currentDistanceRinning
        
        
        if(weekNumber != totalWeeks)
        {
            wed = String(length / 10 + 5)
            
            if(= mon)
            {
                
            }
            if(parkRun == true)
            {
                sat = "5"
            }
        }
        
        
    var dateComponents = DateComponents()
    dateComponents.month = monthDate
    dateComponents.year = yearDate
    dateComponents.day = monthDate
    
    // Create date from components
    let userCalendar = Calendar.current // user calendar
    let someDateTime = userCalendar.date(from: dateComponents)
        
    }
}
