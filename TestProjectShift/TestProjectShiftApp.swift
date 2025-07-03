//
//  TestProjectShiftApp.swift
//  TestProjectShift
//
//  Created by Руслан Плешкунов on 02.07.2025.
//

import SwiftUI

@main
struct TestProjectShiftApp: App {
    @AppStorage("userName") var userName: String = ""
    var body: some Scene {
        WindowGroup {
            if userName.isEmpty {
                RegistrationView()
            } else {
                MainView()
            }
        }
    }
}
