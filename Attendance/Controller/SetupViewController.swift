import UIKit
import Neon
import Localize_Swift

class SetupViewController: UIViewController {

    @IBOutlet weak var logoImgView: UIImageView!
    @IBOutlet weak var langView: UIView!
    @IBOutlet weak var langLbl: UILabel!
    @IBOutlet weak var arBttnImgView: UIImageView!
    @IBOutlet weak var arBttn: UIButton!
    @IBOutlet weak var enBttnImgView: UIImageView!
    @IBOutlet weak var enBttn: UIButton!
    @IBOutlet weak var baseURLView: UIView!
    @IBOutlet weak var baseURLLbl: UILabel!
    @IBOutlet weak var baseURLImgView: UIImageView!
    @IBOutlet weak var baseURLTxtField: UITextField!
    @IBOutlet weak var baseURLTxtFieldBorder: UILabel!
    @IBOutlet weak var saveBttn: UIButton!
    
    var selectedLang = "en"
    override func viewDidLoad() {
        super.viewDidLoad()
        renderView()
    }

    func renderView(){
        logoImgView.anchorAndFillEdge(.top, xPad: self.view.width * 0.10, yPad: self.view.height * 0.10, otherSize: self.view.height * 0.15)
        langView.align(.underCentered, relativeTo: logoImgView, padding: self.view.height * 0.05, width: self.view.width * 0.9, height: self.view.height * 0.20)
        langView.layer.cornerRadius = 5;
        langView.layer.masksToBounds = true;
        langView.layer.borderWidth = 1
        langView.layer.borderColor = UIColor.orange.cgColor
        langLbl.anchorInCorner(Corner.topLeft, xPad: langView.width * 0.05, yPad: langView.height * 0.02, width: langView.width * 0.30, height: langView.height * 0.25)
        langLbl.text = "Language"
        langLbl.textColor = UIColor.orange
        langLbl.font = langLbl.font.withSize(20.0)
        langLbl.adjustsFontSizeToFitWidth = true
        langLbl.minimumScaleFactor = 0.2
        enBttnImgView.align(.underMatchingLeft, relativeTo: langLbl, padding: langView.height * 0.05, width: langView.width * 0.15, height: langView.height * 0.25)
        enBttnImgView.image = #imageLiteral(resourceName: "checked")
        enBttnImgView.contentMode = .scaleToFill
        enBttn.align(.toTheRightMatchingTop, relativeTo: enBttnImgView, padding: langView.width * 0.05, width: langView.width * 0.50, height: langView.height * 0.25)
        enBttn.setTitle("English", for: .normal)
        enBttn.tintColor = UIColor.black
        enBttn.contentHorizontalAlignment = .left
        enBttn.contentVerticalAlignment = .center
        enBttn.titleLabel!.font = enBttn.titleLabel!.font.withSize(20.0)
        enBttn.titleLabel!.adjustsFontSizeToFitWidth = true
        enBttn.titleLabel!.minimumScaleFactor = 0.2
        arBttnImgView.align(.underMatchingLeft, relativeTo: enBttnImgView, padding: langView.height * 0.05, width: langView.width * 0.15, height: langView.height * 0.25)
        arBttnImgView.image = #imageLiteral(resourceName: "checked")
        arBttnImgView.contentMode = .scaleToFill
        arBttnImgView.isHidden = true
        arBttn.align(.toTheRightMatchingTop, relativeTo: arBttnImgView, padding: langView.width * 0.05, width: langView.width * 0.50, height: langView.height * 0.25)
        arBttn.tintColor = UIColor.black
        arBttn.setTitle("العربية", for: .normal)
        arBttn.contentHorizontalAlignment = .left
        arBttn.contentVerticalAlignment = .center
        arBttn.titleLabel!.font = arBttn.titleLabel!.font.withSize(20.0)
        arBttn.titleLabel!.adjustsFontSizeToFitWidth = true
        arBttn.titleLabel!.minimumScaleFactor = 0.2
        baseURLView.align(.underCentered, relativeTo: langView, padding: self.view.height * 0.05, width: self.view.width * 0.9, height: self.view.height * 0.20)
        baseURLView.layer.cornerRadius = 5;
        baseURLView.layer.masksToBounds = true;
        baseURLView.layer.borderWidth = 1
        baseURLView.layer.borderColor = UIColor.orange.cgColor
        baseURLLbl.anchorInCorner(Corner.topLeft, xPad: baseURLView.width * 0.05, yPad: baseURLView.height * 0.05, width: baseURLView.width * 0.30, height: baseURLView.height * 0.25)
        baseURLLbl.text = "Base URL"
        baseURLLbl.textColor = UIColor.orange
        baseURLLbl.font = langLbl.font.withSize(20.0)
        baseURLLbl.adjustsFontSizeToFitWidth = true
        baseURLLbl.minimumScaleFactor = 0.2
        baseURLImgView.align(.underMatchingLeft, relativeTo: baseURLLbl, padding: baseURLView.height * 0.05, width: baseURLView.width * 0.15, height: baseURLView.height * 0.25)
        baseURLImgView.image = #imageLiteral(resourceName: "baseURL")
        baseURLImgView.contentMode = .scaleToFill
        baseURLTxtField.align(.toTheRightMatchingTop, relativeTo: baseURLImgView, padding: baseURLView.width * 0.05, width: baseURLView.width * 0.65, height: baseURLView.height * 0.25)
        baseURLTxtFieldBorder.align(.underMatchingRight, relativeTo: baseURLTxtField, padding: baseURLView.height * 0.03, width: baseURLView.width * 0.85, height: 3.0)
        baseURLTxtFieldBorder.text = ""
        baseURLTxtFieldBorder.backgroundColor = UIColor.orange
        baseURLTxtFieldBorder.layer.borderWidth = 0
        saveBttn.align(.underCentered, relativeTo: baseURLView, padding: self.view.height * 0.05, width: self.view.width * 0.9, height: self.view.height * 0.05)
        saveBttn.backgroundColor = UIColor.orange
        saveBttn.setTitle("SAVE", for: .normal)
        saveBttn.contentHorizontalAlignment = .center
        saveBttn.contentVerticalAlignment = .center
        saveBttn.tintColor = UIColor.white
        saveBttn.titleLabel!.font = saveBttn.titleLabel!.font.withSize(20.0)
        saveBttn.titleLabel!.adjustsFontSizeToFitWidth = true
        saveBttn.titleLabel!.minimumScaleFactor = 0.2
        saveBttn.layer.cornerRadius = 5;
        saveBttn.layer.masksToBounds = true;
        saveBttn.layer.borderColor = UIColor.clear.cgColor
    }
    
    @IBAction func arLangPressed(_ sender: UIButton) {
        arBttnImgView.isHidden = false
        enBttnImgView.isHidden = true
        selectedLang = "ar"
    }
    
    @IBAction func enLangPressed(_ sender: UIButton) {
        enBttnImgView.isHidden = false
        arBttnImgView.isHidden = true
        selectedLang = "en"
    }
    
    
    @IBAction func saveBttnPressed(_ sender: UIButton) {
        if baseURLTxtField.text! == ""{
            Utility.simpleAlert(title: "Error", msg: "Please Enter Base URL")
        }else{
            Localize.setCurrentLanguage(selectedLang)
            UserDefaults.standard.set(selectedLang, forKey: "lang")
            UserDefaults.standard.set(baseURLTxtField.text!, forKey: "baseURL")
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let destinationVC = storyboard.instantiateViewController(withIdentifier: "LoginVC")
                as! LoginViewController
            self.navigationController?.pushViewController(destinationVC, animated: true)
        }
    }
    
    
}
