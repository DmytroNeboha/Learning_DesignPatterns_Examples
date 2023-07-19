

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dayPicker: DayPickerView!
    
    var days = ["Пн", "Вт", "Ср", "Чт", "Пт", "Сб", "Нд"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dayPicker.dataSource = self
    }
}

 
extension ViewController: DayPickerViewDataSource {
   
    func dayPickerCount(_ dayPicker: DayPickerView) -> Int {
        return days.count
    }
    
    func dayPickerTitle(_ dayPicker: DayPickerView, indexPath: IndexPath) -> String {
        return days[indexPath.row]
    }
}
