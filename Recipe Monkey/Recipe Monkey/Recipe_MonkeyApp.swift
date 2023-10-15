//
//  Recipe_MonkeyApp.swift
//  Recipe Monkey
//
//  Created by Eric on 10/3/23.
//

import SwiftUI

@main
struct Recipe_MonkeyApp: App {
    @State var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
