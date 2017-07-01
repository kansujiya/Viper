//
//  LoginView.swift
//  ViperSample
//
//  Created by Suresh Kansujiya on 01/07/17.
//  Copyright © 2017 Suresh Kansujiya. All rights reserved.
//

import UIKit

protocol ViewActionProtocol {
    func performAction(data : Any?)
}

class LoginView: UIView {

     @IBOutlet weak var txtEmail : UITextField!
     @IBOutlet weak var txtPassword : UITextField!
    var delegateView : ViewActionProtocol?
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    @IBAction func btnLoginClicked(){
        if let delegate = self.delegateView {
            delegate.performAction(data: nil)
        }
    }

}
