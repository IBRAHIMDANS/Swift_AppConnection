//
//  SignUpview.swift
//  TD
//
//  Created by Ibrahima DANSOKO on 14/02/2019.
//  Copyright © 2019 Ibrahima DANSOKO. All rights reserved.
//

import UIKit


protocol SignUpViewDelegate {
    func toLoginAction()
    func toSignUpAction()
}
class SignUpview: UIView {

    @IBOutlet weak var signUpView: UIView!
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var confirmPasswordText: UITextField!
    

    var delegate: SignUpViewDelegate?
    
    @IBAction func toLoginAction() {
        delegate?.toLoginAction()
    }
    
    @IBAction func toSignUpAction() {
        delegate?.toSignUpAction()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    func initSubviews() {
        Bundle.main.loadNibNamed("SignUpView", owner: self, options: nil)
        signUpView.frame = bounds
        signUpView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        addSubview(signUpView)
    }
    

}
