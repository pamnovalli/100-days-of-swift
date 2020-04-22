// Created by @pamnovalli


// Variables

var iOSProgrammingLanguage = "ObjectiveC"

iOSProgrammingLanguage = "Swift"

print("----------------------------------------------")

// Constants

let swift = "The best programming language"

print("----------------------------------------------")

// Strings

//Swift strings are modeled as collections of characters that are encoded using the very common UTF-8 text encoding.

var language = "Swift"
language.utf8.count
language.count

var secondCharacter = language.index(after: language.startIndex)
print(language[secondCharacter])

print("----------------------------------------------")

// Multi-line strings

var swiftFeatures = """
Closures unified with function pointers", "Tuples and multiple return values", "Generics", "Fast and concise iteration over a range or collection", "Structs that support methods, extensions, and protocols", "Functional programming patterns, e.g., map and filter", "Powerful error handling built-in
"""
print(swiftFeatures)

print("----------------------------------------------")

// String interpolation

var features = "The \(language) has the following features: \(swiftFeatures)"

print("----------------------------------------------")

// Integers

var swiftYearCreated = 2014

print("----------------------------------------------")

// Double

var swiftVersion = 5.2

print("----------------------------------------------")

// Bool

var swiftIsBestLanguage: Bool

swiftIsBestLanguage = true

