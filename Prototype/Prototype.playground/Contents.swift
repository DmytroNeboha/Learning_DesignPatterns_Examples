import UIKit

//MARK: глибоке копіювання


var str = "Prototype"


//MARK: варіант 1

//class Person {
//    var name = ""
//
//    func clone() -> Person {
//        let person = Person()
//        person.name = name
//        return person
//    }
//}
//
//var person1 = Person()
//person1.name = "Jim"
//print(person1.name)
//
//var person2 = person1
//person2.name = "Jack"
//print(person1.name)
//
//print(person1 === person2)


//MARK: варіант 2

//class Person {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func clone() -> Person {
//        return Person(name: self.name)
//    }
//}
//
//var person1 = Person(name: "Jim")
//
//var person2 = person1.clone()
//
//print(person1 === person2)


//MARK: варіант 3

public protocol Copying {
    init(_ prototype: Self)
}


extension Copying {
    public func copy() -> Self {
        return type(of: self).init(self)
    }
    
}


class Person: Copying {
    var name: String

    init(name: String) {
        self.name = name
    }
    
    required convenience init(_ prototype: Person) {
        self.init(name: prototype.name)
    }
}

var person1 = Person(name: "Jim")

var person2 = person1.copy()

print(person1 === person2)
