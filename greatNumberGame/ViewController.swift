//
//  ViewController.swift
//  greatNumberGame
//
//  Created by SP on 3/7/18.
//  Copyright © 2018 Soumya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    var randomNumber = Int(arc4random_uniform(100)+1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var guessTextField: UITextField!
    
    @IBAction func submitButton(_ sender: UIButton) {
     print(guessTextField.text)
        
        if let guessedNum = guessTextField.text  {

            let guess:Int? = Int(guessedNum)
            if let num = guess  {

                print(num)
                print(randomNumber)
                if num > randomNumber {
                    let alert = UIAlertController(title: "Incorrect", message: "\(num) is too high.", preferredStyle: .alert)
                    alert.view.backgroundColor = .red
                    alert.addAction(UIAlertAction(title: "Guess Again", style: .default, handler: nil))
                    
                    guessTextField.text = ""
                    
                    self.present(alert, animated: true)

                }
                else if num < randomNumber {
                    let alert = UIAlertController(title: "Incorrect", message: "\(num) is too low.", preferredStyle: .alert)
                    alert.view.backgroundColor = .red
                    alert.addAction(UIAlertAction(title: "Guess Again", style: .default, handler: nil))
                    
                    guessTextField.text = ""
                    
                    self.present(alert, animated: true)
                    
                }
                
                else if num == randomNumber {
                    let alert = UIAlertController(title: "Correct", message: "\(num) is correct.", preferredStyle: .alert)
                    alert.view.backgroundColor = .green
    
                    alert.addAction(UIAlertAction(title: "Play Again", style: .default, handler: nil))
                    
                    guessTextField.text = ""
                    randomNumber = Int(arc4random_uniform(100)+1)
                    
                    self.present(alert, animated: true)
                    
                }
                
            }
        }
    

}

}
