//
//  InterfaceController.swift
//  finalDiceRoller WatchKit Extension
//
//  Created by Yenter, Nicholas A on 10/7/15.
//  Copyright © 2015 Yenter, Nicholas A. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController
{
    @IBOutlet var theTable: WKInterfaceTable!
    
    var sides = [4, 6, 8, 10, 12, 20, 100]
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        let labelNames = ["d4","d6","d8","d10","d12","d20","d100"]
        self.theTable.setNumberOfRows(labelNames.count, withRowType: "cell")
        for(var i = 0; i < labelNames.count; i++)
        {
            let currRow = self.theTable.rowControllerAtIndex(i) as! diceRow
            currRow.theLabel.setText(labelNames[i])
            currRow.theImage.setImageNamed(labelNames[i] + ".jpg")
        }
        
        //self.pushControllerWithName("numRollsSelector", context: "Select number of rolls")
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int)
    {
        print(self.sides[rowIndex])
        diceRollerCore.numSides = self.sides[rowIndex]
        self.pushControllerWithName("numRolls", context: "D\(self.sides[rowIndex])")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
