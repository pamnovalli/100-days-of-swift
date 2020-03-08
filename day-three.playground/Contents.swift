// Created by @pamnovalli

import Foundation

// Arithmetic Operators

var swiftCurrentVersion = ((5.1 + 0.1) * 100).rounded()/100

var swiftVersion: Double = (swiftCurrentVersion - 0.9) - 0.1

// Operator Overloading

var language = "Swift"

var phrase = " is a best language"

var bestLanguage = language + phrase

// Compound Operators

swiftVersion += (0.9) + 0.1

swiftVersion -= (0.9) + 0.1


// Comparison Operators

swiftCurrentVersion == swiftVersion
swiftCurrentVersion != swiftVersion
swiftCurrentVersion > swiftVersion
swiftCurrentVersion < swiftVersion
swiftCurrentVersion >= swiftVersion
swiftCurrentVersion <= swiftVersion


// Conditions

var newSwiftFeatures: String

if swiftCurrentVersion == 5.2 {
    newSwiftFeatures = """
    Key Path Expressions as Functions,
    Callable values of user-defined nominal types,
    Subscripts can now declare default arguments,
    New and improved diagnostics
    """
} else {
    newSwiftFeatures = "No updates available at this time"
}

//Combining conditions

var xcodeVersion = 11

if swiftCurrentVersion == 5.2 && xcodeVersion >= 11  {
    print("You can test the new features of the Swift")
}

if swiftVersion == 4.2 || swiftVersion > 4.2 {
    print("You have access to Derived collections of enum cases")
}

// The ternary operator

swiftCurrentVersion == 5.1 ? print("Update for Swift 5.2") : print("Your version is already updated")


// Switch statements

switch swiftVersion {
case 1.2:
    print("Swift version 1.2")
    break
case 2.1:
    print("Swift version 2.1")
    break
case 2.2:
    print("Swift version 2.2")
    break
case 3.0:
    print("Swift version 3.0")
    break
case 3.1:
    print("Swift version 3.1")
    break
case 4.2:
    print("Swift version 4.2")
    break
case 5_1:
    print("Swift version 5.1")
    break
default:
    print("Swift version 5.2")
}

// Range operators

switch xcodeVersion {
case 1..<11:
    print("You do not have access to updates")
    break
default:
    print("You have access to updates")
}




