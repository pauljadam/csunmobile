//
//  ViewController.swift
//  LinkBadiOS
//
//  Created by Paul Adam on 2/26/17.
//  Copyright © 2017 PaulJAdam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func openForgotLink(_ sender: Any) {
        UIApplication.shared.openURL(URL(string: "http://www.google.com")!)
}
    @IBAction func openRegisterLInk(_ sender: Any) {
        UIApplication.shared.openURL(URL(string: "http://www.apple.com")!)
   }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

