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
                            Text("\(item.weight) кг.")
                                .font(.subheadline)
                                .lineLimit(1)
                        }
                    }
                    Spacer()
                    VStack(spacing: 2.0) {
                        Text("\(item.discountPrice) р.")
                            .fontWeight(.bold)
                        Text("\(item.price) р.")
                            .font(.subheadline)
                            .fontWeight(.light)
                            .strikethrough()
                        Text("\(item.discount)%")
                            .fontWeight(.bold)
                            .font(.subheadline)
                            .background(Color.yellow)
                            .cornerRadius(5)
                    }
                }
                .padding(.horizontal, 15.0)
                
                Button("Добавить в список") {
                    print("Товар добавлен в список")
                } .frame(width: UIScreen.main.bounds.width - 30, height: 60
                         , alignment: .center)
                .accentColor(.white)
                .background(Color.red)
                .cornerRadius(10)
                .padding(.horizontal, 15.0)
  
                
                Text("Информация")
                    .bold()
                    .padding(.leading, 15.0)
                
                HStack {
                    Text("Цена по карте")
                        .foregroundColor(Color.gray)
                    Spacer()
                    Text("\(item.price) р.")
                }
                .padding(.horizontal, 15.0)
                HStack {
                    Text("Цена без карты")
                        .foregroundColor(Color.gray)
                    Spacer()
                    Text("\(item.price) р.")
                }
                .padding(.horizontal, 15.0)
                HStack {
                    Text("Обычная цена")
                        .foregroundColor(Color.gray)
                    Spacer()
                    Text("\(item.price) р.")
                }
                .padding(.horizontal, 15.0)
                HStack {
                    Text("Производитель")
                        .foregroundColor(Color.gray)
                    Spacer()
                    Text("\(item.price) р.")
                }
                .padding(.horizontal, 15.0)
                HStack {
                    Text("Бренд")
                        .foregroundColor(Color.gray)
                    Spacer()
                    Text("\(item.price) р.")
                }
                .padding(.horizontal, 15.0)
                HStack {
                    Text("Упаковка")
                        .foregroundColor(Color.gray)
                    Spacer()
                    Text("\(item.price) р.")
                }
                .padding(.horizontal, 15.0)
            }
        }
        .navigationBarItems(trailing:
                                Button(action: {
                                    print("Корзина открыта")
                                }) {
                                    Image("cart_red")
                                        .accentColor(.red)
                                })
    }
}


struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: itemData[0])
    }
}
