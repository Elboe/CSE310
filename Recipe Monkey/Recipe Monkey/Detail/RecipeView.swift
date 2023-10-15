//
//  RecipeView.swift
//  Recipe Monkey
//
//  Created by Eric on 10/6/23.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe

    var body: some View {
        
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    }
            placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading, spacing: 30) {
                    if !recipe.description.isEmpty {
                        Text(recipe.description)
                    }
                                        
                    VStack(alignment: .leading, spacing: 20) {
                        if !recipe.ingredients.isEmpty {
                            Text("Ingredients")
                                .font(.headline)
                            Text(recipe.ingredients)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Directions")
                            .font(.headline)
                        
                        Text(recipe.directions)
                    }
                }

            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

#Preview {
    RecipeView(recipe: Recipe.all[0])
}
