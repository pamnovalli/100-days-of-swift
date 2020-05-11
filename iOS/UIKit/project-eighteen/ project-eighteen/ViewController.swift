//
//  ViewController.swift
//  project-eighteen project-eighteen project-eighteen
//
//  Created by Pamela Ianovalli on 10/05/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(1, 2, 3, 4, 5, separator: "-")
        print("Some message", terminator: "")
        
        for i in 1 ... 100 {
            print("Got number \(i)")
        }
    }

   
}

