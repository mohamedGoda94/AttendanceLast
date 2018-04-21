import UIKit

class LoginViewController : UIViewController {

    @IBOutlet weak var passTxtField: UITextField!
    @IBOutlet weak var userNameTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loginBttnPressed(_ sender: UIButton) {
        if userNameTxtField.text! == ""{
            Utility.simpleAlert(title: "error", msg: "userNameEmpty")
        }else if passTxtField.text! == ""{
            Utility.simpleAlert(title: "error", msg: "passFieldEmpty")
        }else{
            do{
                let response = try Authentication.login(userName: userNameTxtField.text!, pass: passTxtField.text!)
                if response{
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let destinationVC = storyboard.instantiateViewController(withIdentifier: "CalendarVC")
                        as! CalendarViewController
                    self.navigationController?.pushViewController(destinationVC, animated: true)
                }else{
                    Utility.simpleAlert(title: "error", msg: "wrongUNorPass")
                }
            }catch{
                Utility.simpleAlert(title: "error", msg: "wrongUNorPass")
            }
            
        }
    }
    
}

