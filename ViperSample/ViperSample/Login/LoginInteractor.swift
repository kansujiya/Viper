//
//  LoginInterator.swift
//  ViperSample
//
//  Created by Suresh Kansujiya on 01/07/17.
//  Copyright © 2017 Suresh Kansujiya. All rights reserved.
//

import UIKit

protocol LoginInteractorInput {
    func executeLogin(request: LoginModel)
}

protocol LoginInteractorOutput {
    func presentLoginResult(_ response: LoginModel?,_ error : Error?)
}

class LoginInteractor: LoginInteractorInput {
    var output: LoginInteractorOutput!
    var worker: LoginWorker = LoginWorker()
    
    // MARK: - Business logic
    
    func executeLogin(request: LoginModel) {
        // NOTE: Pass the result to the Presenter
//        worker.performLogin(request, completionHandler: { (loginModel, error) -> Void in
//            self.output.presentLoginResult(loginModel,error)
//        })
    }
}
