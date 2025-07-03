//
//  RegistrationModel.swift
//  TestProjectShift
//
//  Created by Руслан Плешкунов on 02.07.2025.
//

import Foundation

class RegistrationModel: ObservableObject {
    @Published var name = ""
    @Published var surname = ""
    @Published var birthday = Date()
    @Published var password = ""
    @Published var repeatPassword = ""
    @Published var alertMessage: String?
    
    var isValid: Bool {
        name.count >= 2 &&
        surname.count >= 2 &&
        password.count >= 6 &&
        password.isValidPassword &&
        password == repeatPassword
    }
    
    func register() {
        guard isValid else {
            alertMessage = "Заполните все поля правильно!"
            return
        }
        UserSessionManager.shared.saveName(name)
    }
}

