// Created by @pamnovalli

// Functions

var swiftVersions = [5.1, 4.2, 3.1, 3.0, 2.2, 2.1, 1.2]

func showVersion(version: Double) {
    print("Swift version \(version)")
}

showVersion(version: 5.2)


func lastVersion(before version: Double) -> Double {
    var lastVersion: Double = 0
    var count = 0
    while count <= swiftVersions.count {
        if swiftVersions[count] == version {
            lastVersion = swiftVersions[count+1]
            break
        }
        count += 1
    }
    return lastVersion
}

var last = lastVersion(before: 4.2)
print(last)


struct Version {
    let number: Double
}

enum VersionError: Error {
    case versionDoesNotExist
}

var currentSwiftVersion = 5.1

func updateSwiftVersion(version: inout Double){
    version = 5.2
}

updateSwiftVersion(version: &currentSwiftVersion)
print(currentSwiftVersion)

print("----------------------------------------------")

// Throwing functions

func checkVersion(_ version: Version) throws -> Bool {
    if swiftVersions.contains(version.number) == true {
         return true
    } else {
        throw VersionError.versionDoesNotExist
    }
}

var version = Version(number: 5.1)

do {
    try checkVersion(version)
    print("This version is valid")
} catch {
    print("This is not a valid version value")
}

