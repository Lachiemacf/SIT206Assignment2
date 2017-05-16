//
//  Database.swift
//  Run Calendar Maker
//
//  Created by SCENSIVINO BEAN on 16/05/2017.
//  Copyright © 2017 Lachie+Vino. All rights reserved.
//

import Foundation

struct Database {
    var weeks :  [Week] = []
            var total: Int = 0
    init(totalWeeksref totalWeeks : Int, typeDateref typeDate : Date, currentDistanceRinningref currentDistanceRinning : Double, distanceref distance : Double,parkRunref parkRun : Bool){
        total = totalWeeks
        for index : Int in 0...total{
            weeks.append(Week(weekNumber :index,totalWeeks : totalWeeks, typeDate : typeDate ,currentDistanceRinning : currentDistanceRinning, distance : distance, parkRun : parkRun))
        
            
    }
}
}
