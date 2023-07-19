

import UIKit


class FirstCell: UITableViewCell { /**/ }
class SecondCell: UITableViewCell { /**/ }
class ThirdCell: UITableViewCell { /**/ }


struct HeightResultVisitor {
    func visit(_ cell: FirstCell) -> CGFloat { return 10.0}
    func visit(_ cell: SecondCell) -> CGFloat { return 20.0}
    func visit(_ cell: ThirdCell) -> CGFloat { return 30.0}
}


protocol HeightResultVisitable {
    func accept(_ visitor: HeightResultVisitor) -> CGFloat
}




extension FirstCell: HeightResultVisitable {
    func accept(_ visitor: HeightResultVisitor) -> CGFloat {
        return visitor.visit(self)
    }
}

extension SecondCell: HeightResultVisitable {
    func accept(_ visitor: HeightResultVisitor) -> CGFloat {
        return visitor.visit(self)
    }
}

extension ThirdCell: HeightResultVisitable {
    func accept(_ visitor: HeightResultVisitor) -> CGFloat {
        return visitor.visit(self)
    }
}




class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        registerCell()

    }
    
    func registerCell() {
        tableView.register(FirstCell.self, forCellReuseIdentifier: "FirstCell")
        tableView.register(SecondCell.self, forCellReuseIdentifier: "SecondCell")
        tableView.register(ThirdCell.self, forCellReuseIdentifier: "ThirdCell")
    }
}


extension ViewController: UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        /**/ return FirstCell()
        /**/ return SecondCell()
        /**/ return ThirdCell()

    }
}



extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cell = tableView.cellForRow(at: indexPath) as! HeightResultVisitable
        return cell.accept(HeightResultVisitor())
    }
}



