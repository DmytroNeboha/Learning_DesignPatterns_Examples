

import Foundation


protocol Presenter {
    var messageInfo: String {get}
}


class CatalogPresenter: Presenter {
    
    weak var viewController: CatalogViewController?
    
    
    var messageInfo = "Создавать viewModel для представления"
}
