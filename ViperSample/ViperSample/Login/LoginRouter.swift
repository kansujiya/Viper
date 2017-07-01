//
//  LoginRouter.swift
//  ViperSample
//
//  Created by Suresh Kansujiya on 01/07/17.
//  Copyright © 2017 Suresh Kansujiya. All rights reserved.
//

import UIKit

protocol LoginRouterInput {
    func navigateToSomewhere()
}

class LoginRouter: LoginRouterInput {
    weak var viewController: LoginViewController!
    
    // MARK: - Navigation
    
    func navigateToSomewhere() {
    
    }

}
