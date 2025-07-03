//
//  Product.swift
//  TestProjectShift
//
//  Created by Руслан Плешкунов on 02.07.2025.
//

import Foundation

class Product: Decodable, Identifiable {
    let id: Int
    let title: String
    let price: Double
    let image: String
}
