//
//  ProductsList.swift
//  Garpix_TestApp
//
//  Created by Владислав on 26.10.2020.
//

import SwiftUI

struct ProductsList: View {
    var body: some View {
        
        VStack {
            NavigationView {
                
                List(itemData){ item in
                    
                    NavigationLink(destination: ItemView(item: item)) {
                        TopView(item: item)
                    }
                }
                
                .navigationBarTitle(Text("Продукты"))
                .navigationBarItems(trailing:
                                        HStack {
                                            Button(action: {
                                                print("Нажата кнопки лупа")
                                            }) {
                                                Image(systemName: "magnifyingglass")
                                            }
                                            Button(action: {
                                                print("Корзина открыта")
                                            }) {
                                                Image(systemName: "bag")
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
