//
//  Friend.swift
//  ios
//
//  Created by Elisa Kazan on 2016-09-17.
//  Copyright © 2016 HackTheNorth. All rights reserved.
//

import UIKit

class Friend: NSObject {
    var name: String
    var steps: Int
    var photo: UIImage
    
    init(fromName:String, fromSteps:Int, fromImage:UIImage ) {
        name = fromName
        steps = fromSteps
        photo = fromImage
    }
}
