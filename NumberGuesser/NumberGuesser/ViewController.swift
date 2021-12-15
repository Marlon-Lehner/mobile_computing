//
//  ViewController.swift
//  NumberGuesser
//
//  Created by Stefan Hemberger on 14.10.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var textView: UILabel!
    
    @IBOutlet weak var button: UITextField!
    // let target: Int = Int.random(in: 0...100)
    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.model.newGame()
        print(self.model.target)
    }
    
    
    @IBAction func onEditingChanged(_ sender: Any) {
        self.button.isEnabled = true
    }
    
    @IBAction func onCheckButtonClicked(_ sender: Any) {
        print(self.inputField.text!)
        
        var response: String!
        
        if let guess = Int(self.inputField.text!) {
            switch compareTo() {
                case -1:
                    response = "kleiner"
                case 1:
                    response = "größer"
                default:
                    response = ""
            }
        }
        
        textView.text = response
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return compareTo() == 0
    }
    
    func compareTo () -> Int! {
        let inputInt = Int(inputField.text!) ?? -1
        return model.compare(guess: inputInt)
    }
    
}
