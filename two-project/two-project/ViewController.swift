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
    var score = 0

    override func viewDidLoad() {
        super.viewDidLoad()
       countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        imgOne.layer.borderWidth = 1
        imgTwo.layer.borderWidth = 1
        imgThree.layer.borderWidth = 1
        
        askQuestion()
    }
    
    func askQuestion() {
        imgOne.setImage(UIImage(named: countries[0]), for: .normal)
        imgTwo.setImage(UIImage(named: countries[1]), for: .normal)
        imgThree.setImage(UIImage(named: countries[2]), for: .normal)
    }


}

