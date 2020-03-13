// Created by @pamnovalli


// Structs, properties, and methods

struct Language {
    var name: String
    var version: Double {
        didSet {
            print("This version has been changed")
        }
    }
    mutating func changeName() {
        name = "Object-c"
    }
    
    var develop: String {
       return "Development"
    }
    
    func updateVersion(version: Double) -> String {
        return "This version update for \(version)"
    }
    
}

var language = Language(name: "Swift", version: 5.1)
print(language.name)

language.name = "Swift lang"
print(language.name)
language.version = 5.2
print(language)
language.develop

let dev = language.updateVersion(version: 5.2)

var programming = [language]

var lang = Language(name: "Objective-C", version: 4.0)

print(programming.count)
programming.append(lang)
programming.remove(at: 1)


