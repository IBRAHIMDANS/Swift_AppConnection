//
//  RegisteredUser.swift
//  TD
//
//  Created by Ibrahima DANSOKO on 14/02/2019.
//  Copyright © 2019 Ibrahima DANSOKO. All rights reserved.
//

import Foundation

class RegisteredUser{
    
    var user : User?
    
    static let instance: RegisteredUser = RegisteredUser()
    
    func changeUser(user: User){
        self.user = user
    }
   
}
