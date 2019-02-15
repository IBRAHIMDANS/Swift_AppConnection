//
//  SignInView.swift
//  TD
//
//  Created by Ibrahima DANSOKO on 14/02/2019.
//  Copyright © 2019 Ibrahima DANSOKO. All rights reserved.
//

import UIKit

protocol SignInViewDelegate {
    func toRegisterAction()
    func toProfilAction()
   
}

class SignInView: UIView {

    
    @IBOutlet weak var signInView: UIView!
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    var delegate : SignInViewDelegate?
    
    @IBAction func toRegisterAction() {
        delegate?.toRegisterAction()
    }
    
    @IBAction func toProfilAction() {
        delegate?.toProfilAction()
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
        Bundle.main.loadNibNamed("SignInView", owner: self, options: nil)
        signInView.frame = bounds
        signInView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        addSubview(signInView)
    }
    

}
