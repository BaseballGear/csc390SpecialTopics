//
//  MainIC.swift
//  finalDiceRoller
//
//  Created by Yenter, Nicholas A on 10/7/15.
//  Copyright © 2015 Yenter, Nicholas A. All rights reserved.
//

import WatchKit
import Foundation


class MainIC: WKInterfaceController
{
    let alert = WKAlertAction(title: "Ok", style: WKAlertActionStyle.Cancel, handler: { () -> Void in })
    
        override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    var newRoll = 1
    
    @IBAction func rollDice()
    {
        var currentRole = Int32()
        currentRole = 0
        
        var totalRoles = Int32()
        totalRoles = 0
        
        // If numDice is greater than 1 we set newRoll to 1 so we can display the roll
        if(diceRollerCore.numDice > 0)
        {
            newRoll = 1
        }
        
        while(diceRollerCore.numDice != 0)
        {
            currentRole = rand()%Int32(diceRollerCore.numSides + 1)
            
            totalRoles = totalRoles + currentRole
            
            diceRollerCore.numDice = diceRollerCore.numDice - 1

        }
        
        if(newRoll == 1)
        {
            self.presentAlertControllerWithTitle("The Roll", message: "\(totalRoles + 1)", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])
            newRoll--
        }
        else
        {
            self.presentAlertControllerWithTitle("Error, no die selected. ", message: "Please add a new die.", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])
        }
        
    }
    @IBAction func creatingNewDieRoll()
    {
        self.pushControllerWithName("dieSelector", context: "Pick a die")
    }

    override func willActivate()
    {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        if(diceRollerCore.numSides != -1)
        {
            //Able to do stuff
            print("Num Sides: \(diceRollerCore.numSides)")
            print("Num Dice: \(diceRollerCore.numDice)")
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
