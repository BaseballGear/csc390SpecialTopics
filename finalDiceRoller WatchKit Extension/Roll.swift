//
//  Roll.swift
//  finalDiceRoller
//
//  Created by Yenter, Nicholas A on 10/12/15.
//  Copyright © 2015 Yenter, Nicholas A. All rights reserved.
//

import WatchKit

class Roll: NSObject
{
    var rollSides: Int
    var qty: Int
    
    init(qty: Int, rollSides: Int)
    {
        self.qty = qty
        self.rollSides = rollSides
    }
}
