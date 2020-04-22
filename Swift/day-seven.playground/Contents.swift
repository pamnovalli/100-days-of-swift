// Created by @pamnovalli

// Clojure part 2

func develop(paradigm: (String) -> Void) {paradigm("functional")}

develop { (paradigm: String) in
    print("Programming paradigm \(paradigm)")
}


func studyProgramming(language: (String) -> String) {
    let lang = language("Swift")
    print("I am studying \(lang)")
}

 studyProgramming { (language: String) -> String in
    return "I am studying \(language)"
}

studyProgramming { language -> String in
    return "I am studying \(language)"
}

studyProgramming { language in
    return "I am studying \(language)"
}


studyProgramming {
    "I am studying \($0)"
}

func developApp(programming: (String, String) -> String) {
    let development = programming("Swift", "Functional Paradigm")
    print(development)
}

developApp {
    "I'm develop app with \($0) lang and \($1)"
}

func program() -> (String) -> Void {
    var counter = 0
        
    return {
        print("Programming in \($0)")
        counter += 1
    }
}

let dev = program()
dev("Swift")


