//
//  ContentView.swift
//  RyanRecipeApp
//
//  Created by Ryan Callaghan on 1/22/22.
//

import SwiftUI

struct RecipeListView: View {
    @ObservedObject var model = recipeModel()
    
    
    var body: some View {
        
        NavigationView{
                    List(model.recipes) {r in
                        NavigationLink(
                        destination: recipeDetailView(recipe: r),
                        label: {
                            HStack (spacing: 20) {
                                Image(r.image).resizable().scaledToFill().frame(width: 50, height: 50, alignment: .center).clipped().cornerRadius(5)
                                Text(r.name)
                            }
                        })
                    }
            }.navigationBarTitle("All Recipes")
        }
    }

// Github commit 2 comment

// up to date?
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
