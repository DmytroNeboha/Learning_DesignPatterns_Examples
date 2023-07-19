

import UIKit

class ViewController: UIViewController {

    var chair: Chair?
    var table: Table?
    var sofa: Sofa?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func kithenOrderButton(_ sender: Any) {
        chair = KitchenFactory().createChair()
        table = KitchenFactory().createTable()
        sofa = KitchenFactory().createSofa()
        
    }
    
    
    @IBAction func bedRoomOrderButton(_ sender: Any) {
        chair = BedroomFactory().createChair()
        table = BedroomFactory().createTable()
        sofa = BedroomFactory().createSofa()
        
    }
    
    
    
    
    
}

