
import Foundation


class MercedesDecorator: MercedesProtocol {
   
    private let decoratorType: MercedesProtocol
    
    required init(decorator: MercedesProtocol) {
        self.decoratorType = decorator
    }
    
    
    func getTitle() -> String {
        return decoratorType.getTitle()
    }
    
    func getPrice() -> Double {
        return decoratorType.getPrice()
    }
}
