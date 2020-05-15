//
//  ViewController.swift
//  project-nineteen
//
//  Created by Pamela Ianovalli on 14/05/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var message: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        message.text = "Hello Word"
    }


}

