// Created by @pamnovalli

// Classes

// Never comes with an initializer. The initializer must be created in all classes that have properties.
// Have inheritance
// Instances are created by reference
// Can have deinitializer that ar executed when an instance of a classes is destroi
// Instances created as constants can change a value of a propertie

class OperationalSystem {
    var name: String
    var version: Double
    var userInterface: String
    var memoryManagement: String
    var hardwarePlatform: String
    var security: [String]
    
    init(name: String, version: Double, userInterface: String, memoryManagement: String, hardwarePlatform: String, security: [String]) {
        self.name = name
        self.version = version
        self.userInterface = userInterface
        self.memoryManagement = memoryManagement
        self.hardwarePlatform = hardwarePlatform
        self.security = security
    }
    
    func updateVersion(version: Double) {
        self.version = version
    }
}

var os = OperationalSystem(name: "iOS", version: 13, userInterface: "Direct manipulation using multi-touch", memoryManagement: "Arc", hardwarePlatform: "ARM architecture",
    security: ["Secure Boot", "Secure Enclave", "Face ID", "Passcode", "Touch ID", "Keychain"]
    )

final class iOS: OperationalSystem {
    init(version: Double) {
        super.init(name: "iOS", version: version, userInterface: "Direct manipulation", memoryManagement: "Arc", hardwarePlatform: "Arc", security: ["Secure Boot", "Secure Enclave", "Face ID", "Passcode", "Touch ID", "Keychain"])
        print("Creating new iOS")
    }
    
    deinit {
        print("This version is deprecated")
    }
    
    override func updateVersion(version: Double) {
        self.version = version
        print("Current version is \(version)")
    }
}

let ios = iOS(version: 12)
ios.updateVersion(version: 13)

var iosCopy = ios
iosCopy.name = "Fake iOS"
print(ios.name)
ios.name = "iOS"
print(iosCopy.name)

for _ in 1...3 {
    let ios = iOS(version: 13)
    print("I am \(ios.name) developer")
}
