//
//  LoginConfigurator.swift
//  ViperSample
//
//  Created by Suresh Kansujiya on 01/07/17.
//  Copyright © 2017 Suresh Kansujiya. All rights reserved.
//

import UIKit

// MARK: - Connect View, Interactor, and Presenter
extension LoginViewController: LoginPresenterOutput {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //router.passDataToNextScene(segue: segue)
    }
}

extension LoginInteractor: LoginViewControllerOutput {
}

extension LoginPresenter: LoginInteractorOutput {
}

class LoginConfigurator {

        // MARK: - Object lifecycle
        
        static let sharedInstance = LoginConfigurator()
        
        private init() {}
        
        // MARK: - Configuration
        func configure(viewController: LoginViewController) {
            
            let router = LoginRouter()
            router.viewController = viewController
            
            let presenter = LoginPresenter()
            presenter.output = viewController
            
            let interactor = LoginInteractor()
            interactor.output = presenter
            
            viewController.output = interactor
            viewController.router = router
        }

}
