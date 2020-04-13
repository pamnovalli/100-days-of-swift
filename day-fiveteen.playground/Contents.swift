// Created by @pamnovalli

// Consolidation

import Foundation

enum Operation {
    case sum
    case multiplication
    case division
    case subtraction
}

func calculate(numberOne: Double, numberTwo: Double, operation: Operation, result: @escaping (Double) -> Void)  {
    
    DispatchQueue.main.asyncAfter(deadline: .now()+2.0) {
        switch operation {
        case .sum:
            result(numberOne + numberTwo)
        case .division:
            result(numberOne - numberTwo)
        case .multiplication:
            result(numberOne * numberTwo)
        case .subtraction:
            result(numberOne / numberTwo)
            
        }
        
    }
    
}

calculate(numberOne: 4, numberTwo: 7, operation: .sum) { (result) in
    print("Result: \(result)")
}


class Developer {
    let language: String
    let paradigm: String
    
    init(language: String, paradigm: String) {
        self.language = language
        self.paradigm = paradigm
    }
}

class MobileDeveloper: Developer {
    
    let mobileOperationSystem: String
    
     init(language: String, paradigm: String, mobileOperationSystem: String) {
        self.mobileOperationSystem = mobileOperationSystem
        super.init(language: language, paradigm: paradigm)
    }
    
}

class WebDeveloper: Developer {
    
    override init(language: String, paradigm: String) {
        super.init(language: language, paradigm: paradigm)
    }
}

var iosDeveloper = MobileDeveloper(language: "Swift", paradigm: "Protocol Oriented Programming", mobileOperationSystem: "iOS")
var androidDeveloper = MobileDeveloper(language: "Kotlin", paradigm: "Object Oriented Programming", mobileOperationSystem: "Android")
var webDeveloper = WebDeveloper(language: "Java", paradigm: "Object Oriented Programming")


var developers: [Developer] = [iosDeveloper, webDeveloper, androidDeveloper]

for developer in developers {
    
    if let dev = developer as? MobileDeveloper {
        print("I work with \(dev.mobileOperationSystem) development")
    } else {
        print("I work with Web Develpment")
    }

}
