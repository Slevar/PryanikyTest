//
//  PickerItem.swift
//  PryanikyProject
//
//  Created by Вардан Мукучян on 28.05.2022.
//

import SwiftUI

struct PickerItem: View {
    
    @State var selectedIndex = 0
    var variantArray: [Variant]
    
    var body: some View {
        VStack {
            Text("Пока выбор не сделан - возможно всё")
                .padding(.top, 10)
            Picker(selection: $selectedIndex) {
                ForEach(variantArray, id: \.id) {
                    Text("\($0.text)")
                }
            } label: {
                Text("Hello world")
            }
            .pickerStyle(.wheel)

        }
        // Отобразит id выбранного элемента
        ForEach(variantArray, id: \.id) { element in
            if element.id == selectedIndex {
                Text("\(element.id) - таков ваш выбор")
            }
        }
        Divider()
    }
}
