//
//  UserManager.swift
//  MofidCodingChallange
//
//  Created by Mamad Shahib on 1/29/1401 AP.
//

import Foundation


class UserManager {
    static let shared = UserManager()
    var currentUser : User?
    
    init() {
        ///fetch current userlogin state
     fetchCurrentUser()
    }
    
    private func fetchCurrentUser() {
        do {
            let user = try defaults.getObject(forKey: userCacheKey, castTo: User.self)
            currentUser = user
        } catch let error1 as ObjectSavableError {
            print(error1.description)
            currentUser = nil
        } catch {
            print(error.localizedDescription)
            currentUser = nil
        }
    }
   
   private func setCurrentUser(with user:User , completion : @escaping (Bool)->()) {
        do {
            try defaults.setObject(user, forKey: userCacheKey)
            print("User Saved Successfuly")
            currentUser = user
            completion(true)
        } catch let error1 as ObjectSavableError {
            print(error1.description)
            completion(false)
            currentUser = nil
        } catch {
            print(error.localizedDescription)
            completion(false)
            currentUser = nil
        }
    }
    
    
    func loginUser(with phoneNumber:String , completion : @escaping (Bool)->()) {
        let user = User(phoneNumber: phoneNumber, name: "MofidTestUser")
        setCurrentUser(with: user) { isSuc in
            if isSuc {
                completion(true)
            } else {
                completion(false)
            }
        }
    }
    
}
