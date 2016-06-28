//
//  ViewController.swift
//  NSUserDefaults
//
//  Created by Shreyaansh Bassi on 6/28/16.
//  Copyright © 2016 Shreyaansh Bassi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameEntry: UITextField!
    
    @IBOutlet weak var lastNameEntry: UITextField!
    
    @IBOutlet weak var stateEntry: UITextField!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var stateLabel: UILabel!
    
    var defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Set defaults
        //let defaults = self.defaults
        
        //Display saved data
        if let fname = defaults.stringForKey("savedfirstname") {
            firstNameLabel.text = "First name: \(fname)"
        }
        if let lname = defaults.stringForKey("savedlastname") {
            lastNameLabel.text = "Last name: \(lname)"
        }
        if let sname = defaults.stringForKey("savedstate") {
            stateLabel.text = "State: \(sname)"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveAndDisplay(sender: AnyObject) {
        
        //Save data to ns user defaults
        defaults.setObject(firstNameEntry.text, forKey: "savedfirstname")
        defaults.setObject(lastNameEntry.text, forKey: "savedlastname")
        defaults.setObject(stateEntry.text, forKey: "savedstate")
        defaults.synchronize()
        
        //Display saved data
        if let fname = defaults.stringForKey("savedfirstname") {
            firstNameLabel.text = "First name: \(fname)"
        }
        if let lname = defaults.stringForKey("savedlastname") {
            lastNameLabel.text = "Last name: \(lname)"
        }
        if let sname = defaults.stringForKey("savedstate") {
            stateLabel.text = "State: \(sname)"
        }
    }
    
}