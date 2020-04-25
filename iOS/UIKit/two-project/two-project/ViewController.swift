//
//  ViewController.swift
//  two-project
//
//  Created by Pamela Ianovalli on 24/03/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgOne: UIButton!
    @IBOutlet weak var imgTwo: UIButton!
    @IBOutlet weak var imgThree: UIButton!
    
    
    var countries = [String]()
    var correctAnswer = 0
    var score = 0
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
       countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        imgOne.layer.borderWidth = 1
        imgTwo.layer.borderWidth = 1
        imgThree.layer.borderWidth = 1
        
        askQuestion()
    }
    
    func askQuestion(action: UIAlertAction! = nil) {
        countries.shuffle()
        imgOne.setImage(UIImage(named: countries[0]), for: .normal)
        imgTwo.setImage(UIImage(named: countries[1]), for: .normal)
        imgThree.setImage(UIImage(named: countries[2]), for: .normal)
        correctAnswer = Int.random(in: 0...2)
        title = countries[correctAnswer].uppercased() + "  |  " + "Score: \(String(score))"
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        var title: String
        count += 1
        print(count)
        
        if (sender as AnyObject).tag == correctAnswer {
            title = "Correct"
            score += 1
        } else {
            title = "Wrong! That’s the flag of \(countries[(sender as AnyObject).tag!])"
            score -= 1
        }
        
        if count == 10 {
            let ac = UIAlertController(title: title, message: "You final score is \(score)", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
            present(ac, animated: true)
            score = 0
        } else {
            let ac = UIAlertController(title: title, message: "You score is \(score)", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
            present(ac, animated: true)
            
        }
    }
}
