// Created by @pamnovalli

/* Array
 Orderly collection where you can add or remove items. Can have repeated items
*/

var swiftFeatures = ["Closures unified with function pointers", "Tuples and multiple return values", "Generics", "Fast and concise iteration over a range or collection", "Structs that support methods, extensions, and protocols", "Functional programming patterns, e.g., map and filter", "Powerful error handling built-in"]

var swiftVersions = Array<Double>()

print(swiftFeatures[1])
swiftFeatures.append("Advanced control flow with do, guard, defer, and repeat keywords")
print(swiftFeatures)
swiftFeatures.count
swiftFeatures.remove(at: 1)
swiftFeatures.insert("Type Safety", at: 1)
swiftFeatures.contains("Closures unified with function pointers")
swiftFeatures.removeAll()
print(swiftFeatures)

swiftVersions.append(contentsOf: [1.2, 2.1, 2.2, 3.0, 3.1, 4.2, 5.1, 5.2])
print(swiftVersions.count)

print("----------------------------------------------")

/* Set
 Collection that does not allow repetition of items. Allows you to perform quick searches
*/

var swiftDevsNickName = Set(["@pamnovalli", "@twostraws", "@JohnSundell", "mattgallagher", "@ericasadun"])

swiftDevsNickName.insert("@pamnovalli")
swiftDevsNickName.insert("@khanlou")

print("----------------------------------------------")

/* Tuples
  Collection that does not allow adding or removing items. Items can be accessed through index or name.
*/

var aboutSwift = (
Safe: "The most obvious way to write code should also behave in a safe manner. Undefined behavior is the enemy of safety, and developer mistakes should be caught before software is in production. Opting for safety sometimes means Swift will feel strict, but we believe that clarity saves time in the long run.",
Fast: "Swift is intended as a replacement for C-based languages (C, C++, and Objective-C). As such, Swift must be comparable to those languages in performance for most tasks. Performance must also be predictable and consistent, not just fast in short bursts that require clean-up later. There are lots of languages with novel features — being fast is rare.",
Expressive: "Swift benefits from decades of advancement in computer science to offer syntax that is a joy to use, with modern features developers expect. But Swift is never done. We will monitor language advancements and embrace what works, continually evolving to make Swift even better."
)
print(aboutSwift.Safe)

print("----------------------------------------------")


/* Dictionaries
   Collection that composed of keys and values. Items are accessed by keys.
*/

var ios = [
    1: ["multitouch screen", "Visual Voicemail", "iTunes integration", "Safari browser", "Music app​​"],
    2: ["App Store​", "Improved Maps app​"],
    3: ["Copy and paste​", "Spotlight​ search​", "Recording videos"],
    4: ["FaceTime", "Multitasking", "AirPlay", "AirPrint", "iBooks", "Personal Hotspot"],
    5: ["iCloud", "iMessage", "Notification Center", "Wireless syncing and activation"],
    6: ["Apple Maps", "Do Not Disturb", "Passbook (now Wallet)"],
    7: ["Activation Lock", "AirDrop", "CarPlay", "Control Center", "Touch ID"],
    8: ["Apple Music", "Apple Pay", "iCloud Drive", "Handoff", "Family Sharing", "Third-party keyboards", "HomeKit"],
    9: ["Night Shift", "Low Power Mode", "Public beta program"],
    10: ["​iMessage apps", "Delete built-in apps"],
    11: ["Augmented Reality", "AirPlay 2", "Major enhancements on iPad"],
    12: ["Grouped Notifications", "Screen Time", "ARKit 2", "Siri improvements", "Memoji"],
    13: ["Dark Mode", "Sign In With Apple", "New privacy and security options", "Portrait Lighting", "Look Around", " improved Siri voice", "Overhauled stock apps"]
    ]



print("----------------------------------------------")

/* Enumerations
 Collection that allows you to avoid spelling errors when setting the value of an item.
*/

enum SwiftPrimitiveTypes {
    case String(string: String)
    case Bool(bool: Bool = true)
    case Int
    case Double
}

let stringExample = SwiftPrimitiveTypes.String(string: "This is a string example")
let boolExample = SwiftPrimitiveTypes.Bool()
