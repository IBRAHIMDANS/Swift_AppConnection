
//
//  ProfilView.swift
//  TD
//
//  Created by Ibrahima DANSOKO on 14/02/2019.
//  Copyright © 2019 Ibrahima DANSOKO. All rights reserved.
//

import UIKit

protocol ProfilViewDelegate {
    func toChangePasswordAction()
    func toLogoutAction()
}

class ProfilView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var newPassword: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    
    @IBOutlet weak var profilView: UIView!
    
    var delegate: ProfilViewDelegate?
    
    @IBAction func toChangePasswordAction() {
        delegate?.toChangePasswordAction()
    }
    
    @IBAction func toLogoutAction() {
        delegate?.toLogoutAction()
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
        Bundle.main.loadNibNamed("ProfilView", owner: self, options: nil)
        profilView.frame = bounds
        profilView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        addSubview(profilView)
    }
    
    
}
