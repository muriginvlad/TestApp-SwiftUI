//
//  GroupView.swift
//  Garpix_TestApp
//
//  Created by Владислав on 23.10.2020.
//

import SwiftUI

struct GroupView: View {
    
    var body: some View {
        
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GroupView()
        }
    }
}
