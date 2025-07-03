//
//  MainModel.swift
//  TestProjectShift
//
//  Created by Руслан Плешкунов on 02.07.2025.
//

import Foundation

class MainModel: ObservableObject {
    @Published var products: [Product] = []
    @Published var showGreetings: Bool = false
    
    var userName: String {
        UserSessionManager.shared.userName ?? "Гость"
    }
    func fetchData() {
        NetworkManager.shared.fetchProducts { [weak self] items in
            self?.products = items
        }
    }
}
