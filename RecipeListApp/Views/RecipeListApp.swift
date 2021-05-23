//
//  ContentView.swift
//  RecipeListApp
//
//  Created by cloud_vfx on 20/05/21.
//

import SwiftUI

struct RecipeListApp: View {
   
    @EnvironmentObject var model: RecipeModel
    
    var body: some View {
        
        NavigationView{
        
        List(model.recipes){ r in
            
            NavigationLink(
                destination: RecipeDetailView(recipe: r),
                label: {
                    HStack{
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height: 55, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        Text(r.name)
                        
                    }
                
                })
           
            
        }
        .navigationTitle("All Recipes")
    }
}

struct RecipeListApp_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListApp()
    }
}
}
