// Created by @pamnovalli

// Clojure

var programmingParadigm = {
    print("Functional Paradigm")
}

programmingParadigm()

var language = "Swift"


var functionParadigm = { (language: String) -> String in
    return "\(language) allows development with the functional programming paradigm"
}

let aboutFunctionParadigm = functionParadigm(language)

print(aboutFunctionParadigm)

func develop(paradigm: () -> Void) {
    paradigm()
}

develop(paradigm: programmingParadigm)

develop {
    print("Functional Paradigm")
}
