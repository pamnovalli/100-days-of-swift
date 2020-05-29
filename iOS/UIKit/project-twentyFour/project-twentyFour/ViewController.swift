//
//  ViewController.swift
//  project-twentyFour
//
//  Created by Pamela Ianovalli on 26/05/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let name = "Pamela"
        let personalPresentation = name.withPrefix(prefix: "My name is ")
        print(personalPresentation)
        
        let phoneNumber = "12342332"
        let isNumeric = phoneNumber.isNumeric
        print(isNumeric)
        let isNumericTwo = name.isNumeric
        print(isNumericTwo)
        let address = "house 235"
        let isNumericThree = address.isNumeric
        print(isNumericThree)
        
        let stringLines =  "this\nis\na\ntest"
        let stringArray = stringLines.lines
        print(stringArray)
        
        let number = -3
        number.times { print("Hello") }
        
        var arrayNumbers = [1, 2, 1, 3, 1, 4, 2, 1]
        arrayNumbers.remove(item: 1)
        print(arrayNumbers)
        
        let view = UIView()
        view.bounceOut(duration: 3)
    }
}

