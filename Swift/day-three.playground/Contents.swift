// Created by @pamnovalli

import Foundation

// Arithmetic Operators


var swiftVersion = ((5.1 + 0.1) * 100).rounded()/100

var swiftCurrentVersion = ((5.1 + 0.1) * 100).rounded()/100

swiftVersion = (swiftCurrentVersion - 0.9) - 0.1

print("-----------------------------------")

// Operator Overloading

var language = "Swift"

var phrase = " is a best language"

var bestLanguage = language + phrase

print("-----------------------------------")

// Compound Operators

swiftVersion += (0.9) + 0.1

swiftVersion -= (0.9) + 0.1

print("-----------------------------------")

// Comparison Operators

swiftCurrentVersion == swiftVersion
swiftCurrentVersion != swiftVersion
swiftCurrentVersion > swiftVersion
swiftCurrentVersion < swiftVersion
swiftCurrentVersion >= swiftVersion
swiftCurrentVersion <= swiftVersion

print("-----------------------------------")

// Conditions

var newSwiftFeatures: String

if swiftVersion == swiftCurrentVersion {
    newSwiftFeatures = """
    Key Path Expressions as Functions,
    Callable values of user-defined nominal types,
    Subscripts can now declare default arguments,
    New and improved diagnostics
    """
} else {
    newSwiftFeatures = "No updates available at this time"
}

print("-----------------------------------")

//Combining conditions

var xcodeVersion = 11

var xcodeCurrentVersion = 11

if  swiftVersion == swiftCurrentVersion && xcodeVersion >= xcodeCurrentVersion  {
    print("You can test the new features of the Swift")
}

if swiftVersion == 4.2 || swiftVersion > 4.2 {
    print("You have access to Derived collections of enum cases")
}

print("-----------------------------------")

// The ternary operator

swiftVersion < swiftCurrentVersion ? print("Update for Swift Version") : print("Your version is already updated")

print("-----------------------------------")


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

print("-----------------------------------")

// Range operators

var currentXcodeVersion = 11

switch xcodeVersion {
case 0..<currentXcodeVersion:
    print("You do not have access to swift updates")
    break
default:
    print("You have access to swift updates")
}




