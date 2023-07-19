

import UIKit


class Settings {
    
    static let shared = Settings()
    
    var colorStyle = UIColor.white
    var volumeLevel: Float = 1.0
    
    private init() {}
}
