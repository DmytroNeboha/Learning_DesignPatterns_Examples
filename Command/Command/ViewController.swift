

import UIKit



protocol BaseCommand {
    func undo() -> String
    func forward(_ str: String)
}


class StringUndoCommand: BaseCommand {
   
    private var originalString: String
    private var currentString: String
    
    init(argument: String) {
        originalString = argument
        currentString = argument
    }
        
    func printString() {
        print(currentString)
    }
    
    func forward(_ str: String) {
        currentString.append(str)
    }
    
    func undo() -> String {
        currentString.removeLast()
        return currentString
    }
}

class CommandExecutor {
    private var arrayOfCommand = [BaseCommand]()
    
    func addCommand(command: BaseCommand) {
        arrayOfCommand.append(command)
    }
    
    func  forward(_ str: String) {
        for command in arrayOfCommand {
            command.forward(str)
        }
    }
    
    func undoLast() -> String {
        var title = String()
        for command in arrayOfCommand {
            title = command.undo()
        }
        return title
    }
}


class ViewController: UIViewController {

  
    @IBOutlet weak var textField: UITextField!
    
    let commandExecutor = CommandExecutor()
    var comdUndo: StringUndoCommand?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self

    }

    @IBAction func undoAction(_ sender: Any) {
        textField.text = commandExecutor.undoLast()
    }
    
}


extension ViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        comdUndo = StringUndoCommand(argument: textField.text!)
        commandExecutor.addCommand(command: comdUndo!)
        commandExecutor.forward(string)

        return true
    }
}

