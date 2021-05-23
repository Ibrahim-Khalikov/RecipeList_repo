//
//  RecipeTabView.swift
//  RecipeListApp
//
//  Created by cloud_vfx on 22/05/21.
//

import SwiftUI

struct RecipeTabView: View {
    
    var body: some View {
    
        TabView{
            RecipeFutureView()
                .tabItem {
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Tab 1")
                    }
                }
        
                RecipeListApp()
                    .tabItem {
                        VStack{
                            Image(systemName: "list.dash")
                            Text("Tsb 2")
                }
            }
        }
        .environmentObject(RecipeModel())
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
