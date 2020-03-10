// Created by @pamnovalli

// For loops

var swiftVersions = [5.1, 4.2, 3.1, 3.0, 2.2, 2.1, 1.2]

for versions in swiftVersions {
    print(versions)
}

for _ in 1...4 {
    print("Swift is the best language")
}

// While loops

var index = 0

while index < swiftVersions.count {
    print("Swift version \(swiftVersions[index])")
    index += 1
}

// Repeat loops

var item = 0

repeat {
    print("Swift version \(swiftVersions[item])")
    item += 1
} while item < swiftVersions.count


// Exiting loops

var count = 0

while count < swiftVersions.count {
    print(swiftVersions[count])
    if count == 3 {
        print("this is the last 4 versions of swift")
        break
    }
    count += 1
}

// Exiting multiple loops

swiftLoop: for i in 1...10 {
    for j in 1...10 {
        print ("\(i) \(j)")
        if j == 10 {
            break swiftLoop
        }
    }
}

// Skipping items

for swift in 1...10 {
    if swift % 2 == 1 {
        continue
    }

    print(swift)
}

// Infinite loops

var counter = 0

while true {
    print("Swift is a best Language")
    counter += 1

    if counter == 100 {
        break
    }
}

