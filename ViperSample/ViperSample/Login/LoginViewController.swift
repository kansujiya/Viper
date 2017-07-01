//
//  LoginViewController.swift
//  ViperSample
//
//  Created by Suresh Kansujiya on 01/07/17.
//  Copyright © 2017 Suresh Kansujiya. All rights reserved.
//

import UIKit

//MARK : IN OUT protocol control
protocol LoginViewControllerInput {
    func displayLoginResult(_ loginModel : LoginModel?, _ error : Error?)
}

protocol LoginViewControllerOutput {
    func executeLogin(request: LoginModel)
}


class LoginViewController: UIViewController, LoginViewControllerInput, ViewActionProtocol {

    var output: LoginViewControllerOutput!
    var router: LoginRouter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        LoginConfigurator.sharedInstance.configure(viewController: self)
    }
    
    //MARK : Protocol Conformation
    func displayLoginResult(_ loginModel : LoginModel?, _ error : Error?){
    
    }
    
    func performAction(data : Any?){
        output.executeLogin(request: LoginModel())
    }
}
