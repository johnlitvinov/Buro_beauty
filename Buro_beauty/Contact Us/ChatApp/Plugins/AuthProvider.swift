//
//  AuthProvider.swift
//  Buro_beauty
//
//  Created by Ivan Litvinov on 4/19/18.
//  Copyright © 2018 Ivan Litvinov. All rights reserved.
//

import Foundation
import FirebaseAuth



typealias LoginHandler = (_ msg: String) -> Void

// варианты ошибок
struct LoginErrorCode {
    static let INVALID_EMAIL = "Invalid Email Adress"
    
    static let WRONG_PASSWORD = "Wrong Password"
    
    static let PROBLEM_CONNECTING = "Problems Connecting To Database"
    
    static let USER_NOT_FOUND = "User Not Found,Please Register"
    
    static let Email_ALREADY_IN_USE = "Email Already In Use"
    
    static let WEAK_PASSWORD = "PASSWORD Should Be At Least 6 Characters Long"
    
}





class AuthProvider {
    
    private static let _instance = AuthProvider()
    static var instance: AuthProvider{
    return _instance
    }
    
    var userName = ""
    
   
    
    
    func login(withEmail: String, password: String, loginHandler: LoginHandler?){
        
        Auth.auth().signIn(withEmail: withEmail, password: password, completion: {(user, error) in
        
        if error != nil {
            self.handleErrors(err: error! as NSError, loginHandler: loginHandler)
        }else{
           
            }
            
        })
        
    } // end login func
    
    
    
    
    
    
    func singUp(withEmail: String, password: String, loginHandler: LoginHandler?){
        
        Auth.auth().createUser(withEmail: withEmail, password: password, completion: { (user, error) in
        
        
            if error != nil {
                self.handleErrors(err: error! as NSError, loginHandler: loginHandler)
                
            } else {
               
                if user?.uid != nil {
                    
                 self.login(withEmail: withEmail, password: password, loginHandler: loginHandler)
                    
                }
                
                
            }
            
        })
        
        
    } // end singUp func
    
   
    
    
    func isLooggedIn() -> Bool {
        
        if Auth.auth().currentUser != nil {
            return true
        }
        return false
    }
    
    
    
  
    
    func logOut() -> Bool {
        
        if Auth.auth().currentUser != nil {
            
            do {
                try Auth.auth().signOut()
                return true
                } catch {
                        return false
                    }
                }
                return true
            }
            
            
    
   
    func userID() -> String {
        return Auth.auth().currentUser!.uid
    }
        

    

    
    
    private func handleErrors(err: NSError, loginHandler: LoginHandler?) {
        
        if let errCode = AuthErrorCode(rawValue: err.code) {
            
            switch errCode {
            case .wrongPassword:
                loginHandler?(LoginErrorCode.WRONG_PASSWORD)
                break
            case .invalidEmail:
                loginHandler?(LoginErrorCode.INVALID_EMAIL)
                break
            case .userNotFound:
                loginHandler?(LoginErrorCode.USER_NOT_FOUND)
                break
            case .emailAlreadyInUse:
               loginHandler?(LoginErrorCode.Email_ALREADY_IN_USE)
                break
            case .weakPassword:
                loginHandler?(LoginErrorCode.WEAK_PASSWORD)
                break
            default:
                loginHandler?(LoginErrorCode.PROBLEM_CONNECTING)
                break
            }
        }
    }
    
    
    
} //end class






















