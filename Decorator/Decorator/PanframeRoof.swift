
import Foundation


class PanframeRoof: MercedesDecorator {
    
    required init(decorator: MercedesProtocol) {
        super.init(decorator: decorator)
    }
    
    override func getTitle() -> String {
        return super.getTitle() + " premium roof"
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 2400
    }
}
