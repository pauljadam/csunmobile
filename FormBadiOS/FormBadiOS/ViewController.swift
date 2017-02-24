//
//  ViewController.swift
//  FormBadiOS
//
//  Created by Paul Adam on 2/24/17.
//  Copyright © 2017 PaulJAdam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var errorText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func submitForm(_ sender: Any) {
        errorText.isHidden = false
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

