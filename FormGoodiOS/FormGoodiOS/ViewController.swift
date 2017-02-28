//
//  ViewController.swift
//  FormGoodiOS
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
        //Add gesture recognizer to hide keyboard when tapping outside text fields.
        tapToDismissKeyboard()
    }
    func tapToDismissKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    @IBAction func submitForm(_ sender: Any) {
        errorText.isHidden = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {//need this delay to hear the announcement with voiceover
            UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, self.errorText.text)
        }
        // alternatively use focus management
        UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, self.errorText)
    }
    @IBAction func resetForm(_ sender: Any) {
        errorText.isHidden = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

