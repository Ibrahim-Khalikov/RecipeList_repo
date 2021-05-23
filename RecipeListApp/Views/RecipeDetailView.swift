//
//  RecipeDetailView.swift
//  RecipeListApp
//
//  Created by cloud_vfx on 20/05/21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
     
    ScrollView{
    
        VStack(alignment: .leading){
        Image(recipe.image)
            .resizable()
            .scaledToFill()
           
       
        VStack(alignment: .leading){
            Text("ingredients")
                .font(.headline)
                .padding([.bottom, .top],5)
            
        // directions
                ForEach(recipe.ingredients){ item in
                    Text("- " + item.name)
                    
                }
            }
        .padding(.horizontal)
        
        Divider()
        
            VStack(alignment: .leading){
                Text("Directions")
                    .font(.headline)
                    .padding([.bottom, .top],5)
                
                ForEach(0..<recipe.directions.count, id: \.self){ index in
                    Text(String(index+1) + ". " + recipe.directions[index])
                    
                }
            }.padding(.horizontal)
            
    }.navigationBarTitle(recipe.name)
    }
}
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}

