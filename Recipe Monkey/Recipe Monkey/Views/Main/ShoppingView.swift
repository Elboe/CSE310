//
//  ShoppingView.swift
//  Recipe Monkey
//
//  Created by Eric on 10/5/23.
//

import SwiftUI

struct ShoppingView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Ingedent 1")
            }
            .navigationTitle("Shopping List")
        }
    }
}

#Preview {
    ShoppingView()
}
