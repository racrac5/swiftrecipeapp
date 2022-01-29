//
//  recipeModel.swift
//  RyanRecipeApp
//
//  Created by Ryan Callaghan on 1/22/22.
//

import Foundation

class recipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    
    
    init () {
        // parsing jSON using dataservice
        self.recipes = DataService.getLocalData()
        
        // set recipes properly
        
    }
    
    func addRecipe () {
        //recipes.append(Recipe(name: "Burger", cuisine: "American"))
    }
    
}
