//
//  ViewController.swift
//  Swift Memento Design Pattern
//
//  Created by Andrew L. Jaffee on 7/27/18.
//
/*
 
 Copyright (c) 2017-2018 Andrew L. Jaffee, microIT Infrastructure, LLC, and
 iosbrain.com.
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 
*/

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Called when "Save User" button is tapped. Stores
    // "User" class instance properties to UserDefaults
    // based on stateName property value of "userKey" (but
    // use whatever lights your fire).
    @IBAction func saveUserTapped(_ sender: Any) {
        
        if firstNameTextField.text != "" &&
            lastNameTextField.text != "" &&
            ageTextField.text != "" {
            
            let user = User(firstName: firstNameTextField.text!,
                            lastName: lastNameTextField.text!,
                            age: ageTextField.text!,
                            stateName: "userKey")
            user.show()
            
        }
        
    } // end func saveUserTapped
    
    // Called when "Restore User" button is tapped. Retrieves
    // "User" class instance properties from UserDefaults
    // based on stateName property value of "userKey," if
    // a key/value pair with key "userKey" exists.
    @IBAction func restoreUserTapped(_ sender: Any) {
        
        let user = User(stateName: "userKey")
        firstNameTextField.text = user.firstName
        lastNameTextField.text = user.lastName
        ageTextField.text = user.age
        user.show()

    }
    
} // end class ViewController

