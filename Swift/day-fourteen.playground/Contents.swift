// Created by @pamnovalli

// Consolidation

enum ProjectStatus {
    case debug
    case release
}

func getProjectStatus(status: String) -> String? {
    if status == "release" {
        return "You are in a production environment"
    } else {
        return "You are in a development environment"
    }
}

func checkProjectStatus(status: ProjectStatus) -> String? {
    switch status {
    case .debug:
        return "You are in a production environment"
    case .release:
       return "You are in a development environment"
    
    }
}

checkProjectStatus(status: .debug)

enum TaskType {
    case bug(critical: Int)
    case newFeature
    case refactor
    
    var backlog: String {
        switch self {
        case .bug(let critical) where critical > 7:
            return "execute with priority"
        case .newFeature, .bug:
            return "execute normally"
        case .refactor:
               return "execute at the end of the sprint"
        
        }
    }
}

func refineTask(task: TaskType) -> String {
    return task.backlog
}

refineTask(task: .bug(critical: 5))
