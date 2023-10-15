//
//  TabBar.swift
//  Recipe Monkey
//
//  Created by Eric on 10/5/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            RecipesView()
                .tabItem {
                    Label("Recipes", systemImage: "flame")
                }
            
            AddView()
                .tabItem {
                    Label("Add", systemImage: "plus")
                }
            
            ShoppingView()
                .tabItem {
                    Label("Shopping", systemImage: "cart")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    TabBar()
        .environmentObject(RecipesViewModel())
}
