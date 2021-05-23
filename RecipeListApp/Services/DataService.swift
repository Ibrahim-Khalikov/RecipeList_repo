//
//  DataService.swift
//  RecipeListApp
//
//  Created by cloud_vfx on 21/05/21.
//

import Foundation

class DataService {
    
  static func getLocaldata()-> [Recipe] {
        
        //find path to json file eith bundle
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
       
        guard pathString != nil else {
            return[Recipe]()
           
        }
        // create a url object
        let url = URL(fileURLWithPath: pathString!)
          
            do {
                // create data objet with url
                let data = try Data(contentsOf: url)
                
                // crete jsondecoder instance ]
                
                let decoder = JSONDecoder()
                
                do {
                    let recipeData = try decoder.decode([Recipe].self, from: data)
                    //sert unique id for each instance
                    for r in recipeData{
                        r.id = UUID()
                        
                        for i in r.ingredients {
                            i.id=UUID()
                        }
                    }
                    // set aunique id for each recipe in the  recipe data array
                    return recipeData
                }
                catch{
                    print(error)
                }
                //parse decoder.decode
                
                
            }
            catch{
                print(error)
            }
           return [Recipe]()
            
        }
        
    }

