//
//  LoginModel.swift
//  ViperSample
//
//  Created by Suresh Kansujiya on 01/07/17.
//  Copyright © 2017 Suresh Kansujiya. All rights reserved.
//

import UIKit

class LoginModel: NSObject {

}

struct LoginRequestViewModel {
    
    var username: String?
    var password: String?
    
    enum InputError: Error {
        case InputMissing
        case AgeIncorrect
    }
    
    func createLoginRequest() throws -> Request {
        
        guard let name = username,let pass = password, name.characters.count > 0 && pass.characters.count > 0
            else {
                throw InputError.InputMissing
        }
        return Request(username: username!,password: password!)
    }
}

struct Request {
    var username: String?
    var password: String?
    
    init(username : String, password : String) {
        self.username = username
        self.password = password
    }
}
