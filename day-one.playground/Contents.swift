// Created by @pamnovalli


// Variables

var iOSProgrammingLanguage = "Swift"


// Constants

let swift = "The best programming language"

// Strings

//Swift strings are modeled as collections of characters that are encoded using the very common UTF-8 text encoding.

var swiftFrameworkforUserInterface = "UIKit"
swiftFrameworkforUserInterface.utf8.count
swiftFrameworkforUserInterface.count

var secondCharacter = swiftFrameworkforUserInterface.index(after: swiftFrameworkforUserInterface.startIndex)
print(swiftFrameworkforUserInterface[secondCharacter])

// Multi-line strings

var foundationFramework = """
The Foundation framework defines a base layer of functionality that is required for almost all applications. It provides primitive classes and introduces several paradigms that define functionality not provided by the language or runtime. It is designed with these goals in mind:

Provide a small set of basic utility classes.
Make software development easier by introducing consistent conventions.
Support internationalization and localization, to make software accessible to users around the world.
Provide a level of OS independence, to enhance portability.

"""
print(foundationFramework)


// String interpolation

var swiftFrameworkforUnitTest = "XCTest"

var aboutSwiftUnitTest = "The \(swiftFrameworkforUnitTest) library is designed to provide a common framework for writing unit tests in Swift, for Swift packages and applications."


// Integers

var swiftYearCreated = 2014


// Double
var swiftVersion = 5.1

swiftVersion = 5.2

print(swiftVersion)

// Bool

var swiftIsBestLanguage: Bool

swiftIsBestLanguage = true

