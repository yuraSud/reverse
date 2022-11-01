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
            labelText.text = reverceText(text: text)
            textField.text = ""
            textField.resignFirstResponder()
        }
    }
    

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
    func reverceText(text: String) -> String {
        let textArray = text.split(separator: " ")
        //, omittingEmptySubsequences: false)
        var finalText = ""
        for words in textArray {
            finalText.append(contentsOf: words.reversed())
            finalText.append(" ")
        }
       return finalText
    }
}

