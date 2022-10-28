//
//  ViewController.swift
//  text reverse
//
//  Created by YURA																			 on 26.10.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var enterButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func buttonAction(_ sender: Any) {
        if textField.text == "" {
            return labelText.text = "Input Your text, Please"
        } else if let text = textField.text {
            labelText.text = String(text.reversed())
            textField.text = ""
            textField.resignFirstResponder()
        }
    }
    
    @IBAction func tap(_ sender: Any) {
        textField.resignFirstResponder()
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        buttonAction(self)
        return true
    }
        
   
    
}

