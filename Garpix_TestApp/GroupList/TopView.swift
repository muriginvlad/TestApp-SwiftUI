//
//  TopView.swift
//  Garpix_TestApp
//
//  Created by Владислав on 23.10.2020.
//

import SwiftUI



struct TopView: View {
    
    var item: ItemData
    
    var body: some View {
        HStack(spacing: 20.0 ) {
            Image(item.fileImage).resizable()
                .frame(width: 50.0, height: 50.0)
            VStack(alignment:.leading, spacing: 5.0) {
                Text(item.name)
                    .fontWeight(.bold)
                HStack {
                    Text(item.country)
                        .font(.subheadline)
                   Spacer()
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
            Button(action: {
                print("Нажата кнопки добавить")
            }) {
                Image(systemName: "plus.circle")
            }
        }
       .padding()
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(item: itemData[0])
    }
}

