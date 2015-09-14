//
//  ColorWheel.swift
//  FunFacts
//
//  Created by Mike Pitre on 9/14/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import Foundation
import UIKit

struct ColorWheel {
    
    let colorsArray = [
        UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1), //teal
        UIColor(red: 222/225.0, green: 171/225.0, blue: 66/255.0, alpha: 1), //yellow
        UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1), //red
        UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha: 1), //orange
        UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1), //dark
        UIColor(red: 105/255.0, green: 94/255.0, blue: 133/255.0, alpha: 1), //purple
        UIColor(red: 85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1)] //green

    func randomColor() -> UIColor {
        let unsignedArrayCount = UInt32(colorsArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        
        return colorsArray[randomNumber]
    }

}

