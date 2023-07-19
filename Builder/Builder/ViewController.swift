

import UIKit

class ViewController: UIViewController {

    @IBAction func catalogButtonDidTapped(_ sender: Any) {
        
        let controller = CatalogBuilder().setTitle("Catalog").build()
        self.present(controller, animated: true, completion: nil)
        
    }
}

