//
//  RecipeModel.swift
//  RecipeListApp
//
//  Created by cloud_vfx on 20/05/21.
//

import Foundation

class RecipeModel: ObservableObject {

    @Published var recipes = [Recipe]()
     
    init() {
        self.recipes = DataService.getLocaldata()
        //parse the local data json file
        
        // set the recipes property
        
    }
}
