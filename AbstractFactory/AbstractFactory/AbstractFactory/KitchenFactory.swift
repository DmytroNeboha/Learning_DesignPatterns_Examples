

import Foundation


class KitchenFactory: AbstractFactory {
    func createChair() -> Chair {
        print("Стілець для кухні створений")
        return ChairKitchen()
    }
    
    func createSofa() -> Sofa {
        print("Диван для кухні створений")
        return SofaKitchen()
    }
    
    func createTable() -> Table {
        print("Стіл для кухні створений")
        return TableKitchen()
    }
    
    
}
