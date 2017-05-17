//
//  Database.swift
//  Run Calendar Maker
//
//  Created by SCENSIVINO BEAN on 16/05/2017.
//  Copyright © 2017 Lachie+Vino. All rights reserved.
//

import Foundation

class Database {
    var weeks :  [Week] = []
    
    init(totalWeeksref totalWeeks : Int, typeDateref typeDate : Date, currentDistanceRinningref currentDistanceRinning : Double, distanceref distance : Double,parkRunref parkRun : Bool){
        let total = totalWeeks
        let dis = distance
        print(dis)
        for index : Int in 0...total{
            weeks.append(Week(weekNumber :index,totalWeeks : totalWeeks, typeDate : typeDate ,currentDistanceRinning : currentDistanceRinning, distance : distance, parkRun : parkRun))
        
            
    }
}
}
