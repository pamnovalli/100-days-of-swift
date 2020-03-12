// Created by @pamnovalli

// For loops

var swiftVersions = [5.1, 4.2, 3.1, 3.0, 2.2, 2.1, 1.2]

var iOSVersions = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

for version in swiftVersions {
    print(version)
}

for _ in 1...4 {
    print("Swift is the best language")
}

print("-----------------")

// While loops

var index = 0

while index < swiftVersions.count {
    print("Swift version \(swiftVersions[index])")
    index += 1
}

print("-------------------------------")

// Repeat loops

var item = 0

repeat {
    print("Swift version \(swiftVersions[item])")
    item += 1
} while item < swiftVersions.count

print("-------------------------------")

// Exiting loops

var count = 0

while count < swiftVersions.count {
    print(swiftVersions[count])
    if count == 3 {
        print("This is the last 4 versions of swift")
        break
    }
    count += 1
}

print("-------------------------------")

// Exiting multiple loops

swiftLoop: for i in 1...10 {
    for j in 1...10 {
        print ("\(i) \(j)")
        if j == 10 {
            break swiftLoop
        }
    }
}

print("-------------------------------")

// Skipping items

var iOSVersionMinimum = 10

var iOSVersionsSupport: [Int] = []

for iOS in 0...iOSVersions.count {
    if iOS < iOSVersionMinimum {
        continue
    }
    iOSVersionsSupport.append(iOS)
}
print(iOSVersionsSupport)

print("-------------------------------")

// Infinite loops

var counter = 0

while true {
    print("I love swift language")
    counter += 1

    if counter == 100 {
        break
    }
}

