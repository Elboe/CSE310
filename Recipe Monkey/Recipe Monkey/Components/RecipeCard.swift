//
//  RecipeCard.swift
//  Recipe Monkey
//
//  Created by Eric on 10/5/23.
//

import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe
    var body: some View {
        AsyncImage(url: URL(string: recipe.image)) { image in 
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .overlay(alignment: .bottom) {
                    Text(recipe.name)
                        .font(.headline)
                        .foregroundStyle(.white)
                        .shadow(color: .black, radius: 3)
                        .frame(maxWidth: 136)
                        .padding()
                }
        } placeholder: {
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40, alignment: .center)
                .foregroundColor(.white.opacity(0.7))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Text(recipe.name)
                .font(.headline)
                .foregroundStyle(.white)
                .shadow(color: .black, radius: 3)
                .frame(maxWidth: 136)
                .padding()
        }
        .frame(width: 160, height: 217, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 15, x: 0, y: 10)
    }
}

#Preview {
    RecipeCard(recipe: Recipe.all[0])
}
