//
//  ContentView.swift
//  Garpix_TestApp
//
//  Created by Владислав on 23.10.2020.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView() {
            Text("Тут будет главный экран")
                .tabItem {
                    Image(systemName: "flame")
                    Text("Главная")
                }
                .tag(1)
            ProductsList()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Продукты")
                }
                .tag(2)
            Text("Тут будет информация о карте покупателя")
                .tabItem {
                    Image(systemName: "creditcard")
                    Text("Карта")
                }
                .tag(3)
            Text("Тут будет корзина с продуктами")
                .tabItem {
                    Image(systemName: "cart")
                    Text("Корзина")
                }
                .tag(4)
            Text("Тут будет профиль покупателя")
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Профиль")
                }
                .tag(5)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

