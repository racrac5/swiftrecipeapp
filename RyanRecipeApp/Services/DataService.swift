//
//  DataService.swift
//  RyanRecipeApp
//
//  Created by Ryan Callaghan on 1/22/22.
//

import Foundation

class DataService {
    static func getLocalData() -> [Recipe] {
        // parse json
        
        // get url path
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        // creatre url object
        guard pathString != nil else {
            return [Recipe]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        //create data object
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                for r in recipeData {
                    r.id = UUID()
                }
                return recipeData
            }
            catch {
                print(error)
            }
        }
        catch {
            print("URL error")
        }
    return [Recipe]()
    }
}
