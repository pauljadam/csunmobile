//
//  ViewController.swift
//  a11yDemo
//
//  Created by Paul Adam on 2/28/17.
//  Copyright © 2017 PaulJAdam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textBox.accessibilityLabel = "Enter your name from code:";
    }

    @IBOutlet weak var textBox: UITextField!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

