//
//  LoginPresenter.swift
//  ViperSample
//
//  Created by Suresh Kansujiya on 01/07/17.
//  Copyright © 2017 Suresh Kansujiya. All rights reserved.
//

import UIKit

protocol LoginPresenterInput {
    func presentLoginResult(_ response: LoginModel?,_ error : Error?)
}

protocol LoginPresenterOutput : class {
    func displayLoginResult(_ loginModel : LoginModel?, _ error : Error?)
}

class LoginPresenter: LoginPresenterInput {
    
    weak var output: LoginPresenterOutput!
    
    // MARK: - Presentation logic
    func presentLoginResult(_ loginModel: LoginModel?,_ error : Error?) {
        
        // NOTE: Format the response from the Interactor and pass the result back to the View Controller
        //let viewModel = Login.ViewModel()
        output.displayLoginResult(loginModel, error)
    }
}
