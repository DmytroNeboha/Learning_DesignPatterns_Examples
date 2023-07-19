
import UIKit

class ViewController: UIViewController {

    var authService: AuthentificationService = TwitterAuthenticatorAdapter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createUser(email: "user@example.com", password: "JDHd39ed9d")
    }

    func createUser(email: String, password: String) {
        authService.login(email: email, password: password, success: { (user, token) in
           
            print("Auth succeeded: \(user.email), \(token.value)")
            
        }) { (error) in
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }
}

