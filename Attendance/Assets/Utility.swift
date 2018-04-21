import Foundation
import Localize_Swift
import Alamofire
import Alamofire_Synchronous
import SwiftyJSON


class Utility{
    
    static func simpleAlert(title : String,msg : String){
        let alert = UIAlertController(title: title.localized(), message: msg.localized(), preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK".localized(), style: .default, handler: nil))
        let screen = UIScreen.main
        let screenBounds = screen.bounds
        let alertWindow = UIWindow(frame: screenBounds)
        alertWindow.windowLevel = UIWindowLevelAlert
        let vc = UIViewController()
        alertWindow.rootViewController = vc
        alertWindow.screen = screen
        alertWindow.isHidden = false
        vc.present(alert, animated: true)
    }
    
    static func makeGetRequest(methodName : String,params : [String])throws->JSON{
        var finalURL = UserDefaults.standard.value(forKey: "baseURL") as! String
        finalURL.append("BusinessWS.svc")
        finalURL.append("/")
        finalURL.append(methodName)
        finalURL.append("/")
        let paramsURL = params.joined(separator: "/")
        finalURL.append(paramsURL)
        let response = Alamofire.request(finalURL,method: .get).responseJSON()
        switch response.result
        {
        case .success(let value):
            let json = JSON(value)
            return json
        case .failure(let error):
            print(error.localizedDescription)
            throw MyError.myError("Network Error")
        }
    }
    
    
    
}

enum MyError : Error {
    case myError(String)
}
