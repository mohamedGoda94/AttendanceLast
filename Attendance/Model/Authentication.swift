import Foundation
import SwiftyJSON

class Authentication{
    static func login(userName : String,pass : String)throws->Bool{
        let response = try Utility.makeGetRequest(methodName: "AuthenticateUser", params: [userName,pass])
        if response["employeeId"].stringValue != ""{
            print("ID : \(response["employeeId"].stringValue)")
            User.setUserID(userID: response["employeeId"].stringValue)
            User.setUserSecurityID(userSecurityID: response["securityUserId"].stringValue)
            User.setUserType(userType: response["isManager"].boolValue)
            return true
        }else{
            return false
        }
        
    }
}
