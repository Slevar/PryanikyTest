//
//  ViewItem.swift
//  PryanikyProject
//
//  Created by Вардан Мукучян on 27.05.2022.
//

import SwiftUI

struct ViewItem: View {
    
    let data: Datum
    @State private var showImageText = false
    @State private var showHzDescription = false
    
    var body: some View {
        VStack {
            // Отображение изображеия
            if let url = data.dataClass.url {
                AsyncImage(url: URL(string: url)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 150, height: 150)
                .background(Color.clear)
                .clipShape(Circle())
                .padding(.top, 10)
                .onTapGesture {
                    withAnimation(.spring()) {
                        showImageText.toggle()
                    }
                }
                if let text = data.dataClass.text {
                    Text("Name is - \(text)").opacity(showImageText ? 100 : 0)
                        .padding()
                }
                Divider()
            }
            // Отображение текстового блока
            if let text = data.dataClass.text, data.dataClass.url == nil {
                Text(text)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            showHzDescription.toggle()
                        }
                    }
                    .padding(.top, 10)
                Text("id - \(data.name)").opacity(showHzDescription ? 100 : 0)
                    .padding()
                Divider()
            }
            // Отображение селектора
            if let dictionary = data.dataClass.variants {
                PickerItem(variantArray: dictionary)
            }
            
        }
    }
}
    
