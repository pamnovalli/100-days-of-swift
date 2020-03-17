// Created by @pamnovalli

// Protocols and extensions

protocol iOSDeveloper {
    var name: String { get set }
    var appleID: Int { get set }
    
    func code()
    
}

extension iOSDeveloper {
    mutating func consultAppleID() {
        print("Your apple ID is \(appleID)")
    }
}

struct Developer: iOSDeveloper {
    var appleID: Int
    var name: String
    
    func code() {
        print("I am coding for iOS")
    }
}


var iosDev = Developer(appleID: 11111111, name: "Pamela")
iosDev.consultAppleID()

protocol NSObjectProtocol {
    var description: String { get }
}


protocol TableViewDataSource: NSObjectProtocol {
    func numberOfRowsInSection(number: Int)
    func cellForRowAtIndexPath(indexPath: Int)
}

class TableView: TableViewDataSource {
   
    var description: String = ""
    var numberOfRows: Int?
    var cell: Int?
    
    func numberOfRowsInSection(number: Int) {
        self.numberOfRows = number
    }
    
    func cellForRowAtIndexPath(indexPath: Int) {
        self.cell? = indexPath
    }
}

extension Int {
    func calculateModule(number: Int) -> Int {
        return self % number
    }
    
}

var number = 12
number.calculateModule(number: 4)


var swiftDevsNickName = Set(["@pamnovalli", "@twostraws", "@JohnSundell", "@mattgallagher", "@ericasadun"])
var swiftFeatures = ["Closures unified with function pointers", "Tuples and multiple return values", "Generics", "Fast and concise iteration over a range or collection", "Structs that support methods, extensions, and protocols", "Functional programming patterns, e.g., map and filter", "Powerful error handling built-in"]

extension Collection {
    func summarize() {
        for name in self {
            print(name)
        }
    }
}

swiftDevsNickName.summarize()
swiftFeatures.summarize()
