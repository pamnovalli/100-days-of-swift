// Created by @pamnovalli

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

func checkVersion(_ version: Version) throws -> Bool {
    if swiftVersions.contains(version.number) == false {
        print("This is not a valid version value")
        throw VersionError.versionDoesNotExist
    }
    return true
}

var version = Version(number: 6.0)

try? checkVersion(version)

version = Version(number: 5.1)

try? checkVersion(version)
