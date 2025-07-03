//
//  StringExtension.swift
//  TestProjectShift
//
//  Created by Руслан Плешкунов on 03.07.2025.
//

import Foundation


extension String {
    var isValidPassword: Bool {
        let pattern = "^(?=.*[A-Z])(?=.*\\d)(?=.*[!@#$%^&*(),.?\":{}|<>]).{6,}$"
        return NSPredicate(format: "SELF MATCHES %@", pattern).evaluate(with: self)
    }
}
