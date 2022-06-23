//
//  HomeView.swift
//  PryanikyProject
//
//  Created by Вардан Мукучян on 26.05.2022.
//

import SwiftUI

struct HomeView: View {
        
    @EnvironmentObject private var vm: HomeViewModel
    
    var body: some View {
        ScrollView {
            VStack{
                ForEach(vm.infoArray) { data in
                    ViewItem(data: data)
                }
            }
        }
    }
       

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
}
