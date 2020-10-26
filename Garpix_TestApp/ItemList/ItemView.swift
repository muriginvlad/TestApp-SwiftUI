//
//  ItemView.swift
//  Garpix_TestApp
//
//  Created by Владислав on 23.10.2020.
//

import SwiftUI

struct ItemView: View {
    
    
    var item: ItemData
    
    var body: some View {
        
        ScrollView {
            Image(item.fileImage).resizable()
                .frame(width: UIScreen.main.bounds.width * 0.9 , height: UIScreen.main.bounds.width * 0.9, alignment: .center)
            
            VStack(alignment: .leading, spacing: 10.0) {
                
                HStack {
                    VStack(alignment:.leading, spacing: 5.0) {
                        Text(item.name)
                            .fontWeight(.bold)
                        HStack {
                            Text(item.country)
                                .font(.subheadline)
                            Text(item.weight)
                                .font(.subheadline)
                                .lineLimit(1)
                        }
                    }
                    
                    Spacer()
                    VStack(spacing: 2.0) {
                        Text(item.discountPrice)
                            .fontWeight(.bold)
                        Text(item.price)
                            .font(.subheadline)
                            .fontWeight(.light)
                            .strikethrough()
                        Text(item.discount)
                            .fontWeight(.bold)
                            .font(.subheadline)
                            .background(Color.yellow)
                            .cornerRadius(5)
                    }
                    
                }
                .padding()
                Button("Добавить в список") {
                    print("Товар добавлен в список")
                } .frame(width: UIScreen.main.bounds.width - 30, height: 60
                         , alignment: .center)
                .accentColor(.white)
                .background(Color.red)
                .cornerRadius(10)
                .padding()
                Text(item.description)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .padding()
            }
            
        }
        .navigationBarItems(trailing:
                                
                                Button(action: {
                                    print("Корзина открыта")
                                }) {
                                    Image(systemName: "bag")
                                }
        )
    }
}


struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: itemData[0])
    }
}
