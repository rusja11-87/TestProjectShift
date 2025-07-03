//
//  RegistrationView.swift
//  TestProjectShift
//
//  Created by Руслан Плешкунов on 02.07.2025.
//

import SwiftUI

struct RegistrationView: View {
    
    @StateObject private var viewModel = RegistrationModel()

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Личные данные")) {
                    TextField("Введите имя", text: $viewModel.name )
                    TextField("Введите фамилию", text: $viewModel.surname)
                    DatePicker("Дата рождения", selection: $viewModel.birthday, displayedComponents: .date)
                }
                
                Section(header: Text("Пароль")) {
                    SecureField("Введите пароль", text: $viewModel.password)
                    SecureField("Повторите пароль", text: $viewModel.repeatPassword)
                }
                .textContentType(.newPassword)
            }
            .navigationTitle("Регистрация")
            
        }
        Button(action: {
            viewModel.register()
        }, label: {
            RoundedRectangle(cornerRadius: 12)
                .fill(viewModel.isValid ? Color.blue : Color.secondary)
                .frame(width: 300, height: 50)
                .foregroundColor(.white)
                .overlay(
                    Text("Зарегистрироваться")
                        .font(.headline)
                        .foregroundColor(.white)
                )
        })
        .disabled(!viewModel.isValid)
        .padding()
    }
}

#Preview {
    RegistrationView()
}
