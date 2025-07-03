//
//  UserSessionManager.swift
//  TestProjectShift
//
//  Created by Руслан Плешкунов on 02.07.2025.
//

import Foundation

class UserSessionManager {
    static let shared = UserSessionManager()
    private let key = "userName"
    
    var userName: String? {
        UserDefaults.standard.string(forKey: key)
    }
    
    func saveName(_ name: String) {
        UserDefaults.standard.set(name, forKey: key)
    }
}
