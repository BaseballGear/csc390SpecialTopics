//
//  diceRollerCore.swift
//  finalDiceRoller
//
//  Created by Yenter, Nicholas A on 10/7/15.
//  Copyright © 2015 Yenter, Nicholas A. All rights reserved.
//

import WatchKit

class diceRollerCore: NSObject
{
    static var numSides = 0
    static var numDice = 1
    
    static var theRolls = [Roll]()
    static var hasDice = false
    
    static func resetValues()
    {
        numSides = 0
        numDice = 1
        hasDice = false
    }
    
}
