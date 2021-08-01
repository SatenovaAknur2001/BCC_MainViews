//
//  UserLoginViewModel.swift
//  BCC_Home
//
//  Created by Акнур on 29.07.2021.
//

import Foundation
import SwiftUI


class LoginViewModel: ObservableObject {
    
    @Published var storedUsername = "Aknur"
    @Published var storedpassword = "abcabc"
    @Published var userStorageNumber = UserStorageNumber()
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var authenticationDidFail: Bool = false
    @Published var authenticationDidSucceed: Bool = false
    
}

struct UserStorageNumber {
    var sumNumber = ""
    var periodNumber = ""
    var costNumber = ""
}

