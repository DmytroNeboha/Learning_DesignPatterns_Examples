

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        UIApplication.shared.applicationIconBadgeNumber = 1
//        UserDefaults.standard
//        URLSession.shared
        
        print(Settings.shared.volumeLevel)
        Settings.shared.volumeLevel = 2.0
        print(Settings.shared.volumeLevel)
    }
}

