

import UIKit

protocol Observer: class {
    func update(subject: NotificationCenters)
}


class NotificationCenters {
    var state: Int = {
        return Int(arc4random_uniform(10))
    }()
    
    private lazy var observers = [Observer]()
    
    
    func subscribe(_ observer: Observer) {
        print(#function)
        observers.append(observer)
    }
    
    func unsubscribe(_ observer: Observer) {
        print(#function)
        if let index = observers.index(where: {$0 === observer}) {
            observers.remove(at: index)
            print(#function)
        }
    }
    
    func notify() {
        print(#function)
        observers.forEach({$0.update(subject: self)})
    }
    
    func someBusinessLogic() {
        print(#function)
        state = Int(arc4random_uniform(10))
        notify()
    }
}


class ConcreteObserverA: Observer {
    func update(subject: NotificationCenters) {
        print("ConcreteObserverA: \(subject.state)")
    }
}




class ViewController: UIViewController, Observer {
   
    @IBOutlet weak var outOneLabel: UILabel!
    
    let notificationCenter = NotificationCenters()
    let observer1 = ConcreteObserverA()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func update(subject: NotificationCenters) {
        outOneLabel.text = "State subject: \(subject.state)"
    }
    
    
    @IBAction func updateAction(_ sender: UIButton) {
        notificationCenter.someBusinessLogic()
    }
    
    @IBAction func subscribeSwitch(_ sender: UISwitch) {
        if sender.isOn {
            notificationCenter.subscribe(self)
            notificationCenter.subscribe(observer1)
        } else {
            notificationCenter.unsubscribe(self)
            notificationCenter.unsubscribe(observer1)
        }
    }
}

