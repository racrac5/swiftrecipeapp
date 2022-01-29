//
//  recipeDetailView.swift
//  RyanRecipeApp
//
//  Created by Ryan Callaghan on 1/29/22.
//

import SwiftUI

struct recipeDetailView: View {
    var recipe: Recipe
    
    var body: some View {
        ScrollView {
            
                VStack(alignment: .leading){
                    
                    
                    Image(recipe.image).resizable().scaledToFill()
                    
                    VStack(alignment: .leading) {
                    
                    Text("Ingredients").font(.headline).padding([.bottom, .top], 5)
                    // MARK: Ingredients
                    ForEach(recipe.ingredients, id:\.self){ item in
                        Text("-" + item)
                    }
                    
                    Divider()
                    
                    // MARK: Directions
                    Text("Directions").font(.headline).padding(.bottom, 5)
                    ForEach(0..<recipe.directions.count, id:\.self){ index in
                        Text(String(index+1) + "-" + recipe.directions[index]).padding([.bottom, .top], 5)
                        }
                    }
                }.padding(.horizontal)
        }.navigationBarTitle(recipe.name)
        }
    }

struct recipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = recipeModel()
        
        recipeDetailView(recipe: model.recipes[0])
    }
}
