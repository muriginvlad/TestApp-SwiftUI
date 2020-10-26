//
//  ProductsList.swift
//  Garpix_TestApp
//
//  Created by Владислав on 26.10.2020.
//

import SwiftUI

struct ProductsList: View {
    
    init(){
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        
        VStack {
            NavigationView {
                
                List(itemData){ item in
                  
                    NavigationLink(destination: ItemView(item: item)) {
                        EmptyView()
                        TopView(item: item)
                    }
                
                }
                .listStyle(PlainListStyle())

                .navigationBarTitle(Text("Продукты"))
                .navigationBarItems(trailing:
                                        HStack {
                                            Button(action: {
                                                print("Нажата кнопки лупа")
                                            }) {
                                                Image(systemName: "magnifyingglass")
                                                    .accentColor(.red)
                                            }
                                            Button(action: {
                                                print("Корзина открыта")
                                            }) {
                                                Image("cart_red")
                                                    .accentColor(.red)
                                            }
                                        })
            }
        }
        
    }
}



struct ProductsList_Previews: PreviewProvider {
    static var previews: some View {
        ProductsList()
    }
}
