//
//  LoginViewController.swift
//  TD
//
//  Created by Ibrahima DANSOKO on 14/02/2019.
//  Copyright © 2019 Ibrahima DANSOKO. All rights reserved.
//
//abc@gmail.com
import UIKit

class LoginViewController: UIViewController, SignInViewDelegate, SignUpViewDelegate, ProfilViewDelegate {

    @IBOutlet weak var SignIn: SignInView!
    @IBOutlet weak var SignUp : SignUpview!
    @IBOutlet weak var Profil : ProfilView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SignIn.delegate = self
        SignUp.delegate = self
        Profil.delegate = self
        // Do any additional setup after loading the view.
    }
    func showSignIn() {
        SignUp.isHidden = true
        SignIn.isHidden = false
        
    }
    
    func showSignUp() {
        SignIn.isHidden = true
        SignUp.isHidden = false
    }
    
    func toSignUpAction() {
        
        guard let email = SignUp.emailText.text else{
            return
        }
        guard let password = SignUp.passwordText.text else{
            return
        }
        guard let confirmPassword = SignUp.confirmPasswordText.text else{
            return
        }
        if(password == confirmPassword && email != "" && password != ""){
            
            let userfinal : User = User.init(email: email , password: password)
            RegisteredUser.instance.changeUser( user: userfinal )
            Profil.emailLabel.text? = RegisteredUser.instance.user?.email ?? "default value"
            showSignIn()
            print("Successful sign up")
        }else{
          print("Email or password invalid")
        }
    }
    
    func toChangePasswordAction() {
        guard let email = SignUp.emailText.text else{
            return
        }
        guard let newPassword = Profil.newPassword.text else{
            return
        }
        guard let confirmPassword = Profil.confirmPassword.text else{
            return
        }
        if(newPassword == confirmPassword ){
            let userfinal : User = User.init(email: email , password: newPassword)
            RegisteredUser.instance.changeUser( user: userfinal )
            print("Password change is a success")
        }
        else{
            print("Passwords are not matching")
        }
    }
    
    func toRegisterAction() {
        showSignUp()
    }
    
    func toProfilAction() {
        guard let email = SignIn.emailText.text else{
            return
        }
        guard let password = SignIn.passwordText.text else{
            return
        }
        if(RegisteredUser.instance.user != nil){
            if(email == RegisteredUser.instance.user?.email && password == RegisteredUser.instance.user?.password && email.isEmpty == false){
              SignIn.isHidden = true
              Profil.isHidden = false
            print("Successful login")
            }else{
                print("Unable to find a match with this pair of email / password")
            }
        }else{
            print("Please register first")
    }
}
    
    func toLoginAction() {
        showSignIn()
    }
    
    func toLogoutAction() {
        showSignIn()
    }
 
}

