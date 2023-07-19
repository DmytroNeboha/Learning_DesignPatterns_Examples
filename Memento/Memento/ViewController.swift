

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewBoard: DrawView!
    
    var carriarState: CarrierState!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewBoard.lineColor = UIColor.black
        
        let lines = LinesManager.shared
        carriarState = CarrierState(linesManager: lines)

    }
    
    @IBAction func saveAction(_ sender: Any) {
        carriarState.saveLine()
    }
    
    @IBAction func loadAction(_ sender: Any) {
        carriarState.loadLine()
        carriarState.linesManager.printLines(in: viewBoard)
    }
    
    
    @IBAction func blueAction(_ sender: Any) {
        viewBoard.lineColor = .systemBlue
    }
    
    
    @IBAction func orangeAction(_ sender: Any) {
        viewBoard.lineColor = .systemOrange
    }
    
    
    @IBAction func greenAction(_ sender: Any) {
        viewBoard.lineColor = .systemGreen
    }

}

