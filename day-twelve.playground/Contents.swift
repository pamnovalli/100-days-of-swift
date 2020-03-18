// Created by @pamnovalli

// Optional


class Profession {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
}

class Person {
    var name: String
    var profession: Profession?
    var hobby: String?
    let study: String! = nil
    
    init(name: String) {
        self.name = name
    }
    
    func setHobby(_ hobby: String?) {
        self.hobby = hobby
    }
    
    func work(profession: String?) {
        guard let job = profession  else {
            return
        }
        print("My profesional is \(job)")
    }
    
}

var person = Person(name: "Pamela")
person.setHobby("Lettering")

if let hobby = person.hobby {
    print("\(hobby) is a my favorite hobby")
} else {
    print("")
}

var profession = Profession(name: "Developer")

person.work(profession: profession.name)

person.profession = profession

let developer = person.profession!

let personHobby = person.hobby ?? ""

print(developer)

var swiftDevsNickName = ["@pamnovalli", "@twostraws", "@JohnSundell", "@mattgallagher", "@ericasadun"]

let iOSDev = swiftDevsNickName.first?.uppercased()

// Optional try

var swiftVersions = [5.1, 4.2, 3.1, 3.0, 2.2, 2.1, 1.2]

struct Version {
    let number: Double
}

enum VersionError: Error {
    case versionDoesNotExist
}

func checkVersion(_ version: Version) throws -> Bool {
    if swiftVersions.contains(version.number) == true {
        return true
    } else {
        throw VersionError.versionDoesNotExist
    }
}

var version = Version(number: 5.1)


if let check = try? checkVersion(version) {
    print("This version is valid")
} else {
    print("This is not a valid version value")
}


