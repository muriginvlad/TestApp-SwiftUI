//
//  ContentView.swift
//  Garpix_TestApp
//
//  Created by Владислав on 23.10.2020.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView(){
            Text("Главный экран")
                .tabItem {
                    Image("flame")
                    Text("Главная")
                }
                .tag(1)
            ProductsList()
                .tabItem {
                    Image("player_list")
                    Text("Продукты")
                }
                .tag(2)
            Text("Информация о карте покупателя")
                .tabItem {
                    Image("creditcard")
                    Text("Карта")
                }
                .tag(3)
            Text("Корзина с продуктами")
                .tabItem {
                    Image("cart_active")
                    Text("Корзина")
                }
                .tag(4)
            Text("Профиль покупателя")
                .tabItem {
                    Image("user")
                    Text("Профиль")
                }
                .tag(5)
        }
        .accentColor(.red)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

