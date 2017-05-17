//
//  Week.swift
//  Run Calendar Maker
//
//  Created by SCENSIVINO BEAN on 15/05/2017.
//  Copyright © 2017 Lachie+Vino. All rights reserved.
//

import UIKit
import CoreData

class Week: NSObject {
    
    var date : Date
    var mon : String
    var tues : String
    var wed : String
    var thurs : String
    var fri : String
    var sat : String
    var sun : String
    var length : Double
    
    
    // Specify date components
    init(weekNumber : Int, totalWeeks : Int, typeDate : Date, currentDistanceRinning : Double, distance : Double, parkRun : Bool){
        date = typeDate
         mon = "rest"
         tues  = "rest"
         wed  = "rest"
         thurs  = "rest"
         fri = "rest"
         sat = "rest"
         sun = "rest"
        var stride : Double
         length = currentDistanceRinning
        stride = (distance-currentDistanceRinning) / Double(totalWeeks - 3)
        
        if(weekNumber != totalWeeks)
        {
            //mon
            mon = String(weekNumber) + "x400m Speedwork"
            //wed
            wed = String((stride * Double(weekNumber) + currentDistanceRinning)/3)
            
            //sat
            if(parkRun == true)
            {
                sat = "5"
            }
            //sun
            if (weekNumber - totalWeeks == -2){
            sun = String(distance / 2)
            }
            if (weekNumber - totalWeeks == -1){
                sun = String(distance / 4)
            } else{
            sun = String(stride * Double(weekNumber) + currentDistanceRinning)
            }
        
        }else{
        
            let weekDay = Calendar.current.component(.weekday, from: typeDate)
    
        if(weekDay == 1){
            mon = String(distance)
    
        }
        
        if(weekDay == 2){
            tues = String(distance)
            
        }
        if(weekDay == 3){
            wed = String(distance)
            
        }
        if(weekDay == 4){
            thurs = String(distance)
            
        }
        if(weekDay == 5){
            fri = String(distance)
            
        }
        if(weekDay == 6){
            sat = String(distance)
            
        }
        if(weekDay == 7){
            sun = String(distance)
            
        }
                            
                }
            
            }
        }
        
    
