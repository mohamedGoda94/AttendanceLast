import Foundation

class User{
    static func setUserID(userID : String){
        UserDefaults.standard.set(userID, forKey: "userID")
    }
    
    static func setUserSecurityID(userSecurityID : String){
        UserDefaults.standard.set(userSecurityID, forKey: "userSecurityID")
    }
    
    static func setUserType(userType : Bool){
        UserDefaults.standard.set(userType, forKey: "userType")
    }
}
