//
//  numRollsSelector.swift
//  finalDiceRoller
//
//  Created by Yenter, Nicholas A on 10/7/15.
//  Copyright © 2015 Yenter, Nicholas A. All rights reserved.
//

import WatchKit
import Foundation


class numRollsSelector: WKInterfaceController
{
    @IBOutlet var theRoll: WKInterfacePicker!
    
    var numberOfSelectedRolls = 0
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        
        var thePickerItems = [WKPickerItem]()
        for(var i = 0; i < 20; i++)
        {
            thePickerItems.append(WKPickerItem())
            thePickerItems[i].title = "\(i + 1)"
        }
        self.theRoll.setItems(thePickerItems)
    }

    @IBAction func numRollsSelectedButton()
    {
        print(self.numberOfSelectedRolls + 1)
        diceRollerCore.numDice = self.numberOfSelectedRolls + 1
        self.popToRootController()
    }
    
    @IBAction func rollSelected(value: Int)
    {
        self.numberOfSelectedRolls = value
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
