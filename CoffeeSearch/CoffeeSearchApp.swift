//
//  CoffeeSearchApp.swift
//  CoffeeSearch
//
//  Created by Rafal Pawelec on 23/06/2023.
//

import SwiftUI

@main
struct CoffeeSearchApp: App {
    var coffeeVM = CoffeeViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(coffeeVM)
        }
    }
}
