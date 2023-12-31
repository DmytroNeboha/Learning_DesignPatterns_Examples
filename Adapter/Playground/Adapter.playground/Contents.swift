import UIKit

protocol BirdProtocol {
    func sing()
    func fly()
}

class Bird: BirdProtocol {
    func sing() {
        print("tew - tew")
    }
    
    func fly() {
        print("Omg! I am flying!")
    }
}

class Raven {
    func flySearchAndDestroy() {
        print("I am fly")
    }
    
    func voice() {
        print("Kaar - kaar")
    }
}

class RavenAdapter: BirdProtocol {
    private var raven: Raven
    init(adaptee: Raven) {
        raven = adaptee
    }
    
    func sing() {
        raven.flySearchAndDestroy()
    }
    
    func fly() {
        raven.voice()
    }
}



func makeTheBirdTest(bird: BirdProtocol) {
    bird.fly()
    bird.sing()
}

let simpleBird = Bird()
let simpleRaven = Raven()
let ravenAdapter = RavenAdapter(adaptee: simpleRaven)

makeTheBirdTest(bird: simpleBird)
makeTheBirdTest(bird: ravenAdapter)

