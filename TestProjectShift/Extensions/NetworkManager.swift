//
//  NetworkManager.swift
//  TestProjectShift
//
//  Created by Руслан Плешкунов on 02.07.2025.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    
    func fetchProducts(completion: @escaping ([Product]) -> Void) {
        guard let url = URL(string: "https://fakestoreapi.com/products") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            if let data = data {
                let products = try? JSONDecoder().decode([Product].self, from: data)
                DispatchQueue.main.async {
                    completion(products ?? [])
                }
            }
        }.resume()
    }
}
