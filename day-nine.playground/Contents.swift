// Created by @pamnovalli

// Access control, static properties, and laziness

struct Language {
    var name: String
    
    init() {
        name = "indefinite"
    }
}

var language = Language()
language.name = "Swift"
print(language.name)


struct Hobby {
    var name: String
    init(name: String) {
        print("Creating Hobby")
        self.name = name
    }
}

struct Person {
    private var id: Int
    var name: String
    var profession: String
    lazy var hobby = Hobby(name: "")
    static var personsCount = 0
    
    init(name: String, profession: String, id: Int) {
        self.name = name
        self.profession = profession
        self.id = id
        Person.personsCount += 1
    }
    
    func identity() -> String {
        return "My identity is \(id)"
    }
    
}

var person = Person(name: "Pamela", profession: "Developer", id: 1134151)
person.hobby.name = "Lettering"
person.identity()

print(Person.personsCount)
