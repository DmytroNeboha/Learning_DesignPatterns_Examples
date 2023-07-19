

import Foundation

enum Exercises {
    case jumping, squarts
}


class FactoryExercises {
    
    static let defaultFactory = FactoryExercises()
    
    func createExercise(name: Exercises) -> Exercise {
    
        switch name {
        case .squarts: return Squarts()
        case .jumping: return Jumping()
        }
    }
}
