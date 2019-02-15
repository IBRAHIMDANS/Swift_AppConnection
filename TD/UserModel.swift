//
//  UserModel.swift
//  TD
//
//  Created by Ibrahima DANSOKO on 14/02/2019.
//  Copyright © 2019 Ibrahima DANSOKO. All rights reserved.
//

import Foundation

class User{
    var email : String? 
    var password : String?
    
    init( email : String , password : String ){
        self.email = email
        self.password = password
    }
}
