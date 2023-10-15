//
//  ContentView.swift
//  Recipe Monkey
//
//  Created by Eric on 10/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}
#Preview {
    ContentView()
        .environmentObject(RecipesViewModel())
}
