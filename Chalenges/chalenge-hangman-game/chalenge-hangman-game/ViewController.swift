//
//  ViewController.swift
//  chalenge-hangman-game
//
//  Created by Pamela Ianovalli on 17/04/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var wordsList = ["flower", "bird", "raibow", "teacher"]
    var selectedWord = ""
    var tempWord = ""
    
    @IBOutlet weak var word: UILabel!
    
    @IBOutlet weak var txtInputUser: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let randomIndex = Int(arc4random_uniform(UInt32(wordsList.count)))
        selectedWord =  wordsList[randomIndex]
        for _ in selectedWord {
            tempWord.append("?")
        }
        word.text = tempWord
    }
    
    
    
    @IBAction func guessLetter(_ sender: Any) {
        guard let char = txtInputUser.text else { return }
        if selectedWord.contains(char) {
            for (index, word) in selectedWord.enumerated() {
                if String(word) == char {
                     tempWord = String(tempWord.prefix(index) + "\(Character(char))" + tempWord.dropFirst(index+1))
                }
            }
            word.text = tempWord
        } else {
            word.text = "Try another letter"
        }
    }
    
}

