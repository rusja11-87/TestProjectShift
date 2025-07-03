//
//  MainView.swift
//  TestProjectShift
//
//  Created by Руслан Плешкунов on 02.07.2025.
//

import SwiftUI

struct MainView: View {
    @StateObject private var viewModel = MainModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.products) { product in
                    HStack(alignment: .top) {
                        AsyncImage(url: URL(string: product.image)) { image in
                            image
                                .resizable()
                                .scaledToFit()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 80, height: 80)
                        .cornerRadius(10)

                        VStack(alignment: .leading) {
                            Text(product.title)
                                .font(.headline)
                            Text("Цена: \(product.price, specifier: "%.2f")$")
                                .font(.subheadline)
                        }
                    }
                }
            }
            .navigationTitle("Главный экран")
            .onAppear {
                viewModel.fetchData()
            }
        }
        Button {
            viewModel.showGreetings = true
        } label: {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.blue)
                .frame(width: 200, height: 50)
                .overlay(
                    Text("Приветствие")
                        .font(.headline)
                        .foregroundColor(.white)
                )
        }
        .alert(isPresented: $viewModel.showGreetings) {
            Alert(title: Text("Привет"), message: Text("Здравствуйте \(viewModel.userName)!"), dismissButton: .default(Text("Ок")))
        }

    }
}

#Preview {
    MainView()
}
