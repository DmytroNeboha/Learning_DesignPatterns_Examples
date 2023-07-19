

import Foundation


class BedroomFactory: AbstractFactory {
    func createChair() -> Chair {
        print("Стілець для спальні створений")
        return ChairBedroom()
    }
    
    func createSofa() -> Sofa {
        print("Диван для спальні створений")
        return SofaBedroom()

    }
    
    func createTable() -> Table {
        print("Cтіл для спальні створений")
        return CoffeTableBedroom()
    }
    
    
}
