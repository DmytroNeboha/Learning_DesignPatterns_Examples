
import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var priceLabel: UILabel! {
        didSet {
            priceLabel.text = String(mercedes.getPrice()) + "$"
        }
    }
    
    @IBOutlet weak var comentLabel: UILabel!
    
    var mercedes: MercedesProtocol = MercedesCLS()

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    
    @IBAction func menuCarSegment(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            mercedes = MercedesCLS()
            priceLabel.text = String(mercedes.getPrice()) + "$"
            comentLabel.text = mercedes.getTitle()
        case 1:
            mercedes = MercedesCLS()
            mercedes = AlloyWheels(decorator: mercedes)
            priceLabel.text = String(mercedes.getPrice()) + "$"
            comentLabel.text = mercedes.getTitle()
        case 2:
            mercedes = MercedesCLS()
            mercedes = PanframeRoof(decorator: mercedes)
            priceLabel.text = String(mercedes.getPrice()) + "$"
            comentLabel.text = mercedes.getTitle()
        default:
            break
        }
    }
}

