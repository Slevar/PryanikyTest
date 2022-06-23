//
//  Pryaniky_comApp.swift
//  Pryaniky.com
//
//  Created by Вардан Мукучян on 23.06.2022.
//

import SwiftUI

@main
struct Pryaniky_comApp: App {
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
            }
            .environmentObject(vm)
        }
    }
}
