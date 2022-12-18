//
//  NavigationBar.swift
//  EcommerceConcept
//
//  Created by Владимир  on 18.12.22.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        
        NavigationView{
            VStack{
                
                SelectCategory(categoryName: "Select Category", bottonName: "view")
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(0..<5){_ in
                            CategoryBotton()
                                .padding(.horizontal, 3)
                        }
                    }
                }
                .padding()
                SearchBar()
                    .padding(.vertical)
                SelectCategory(categoryName: "Hot sales", bottonName: "see more")
            }
        }
        
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
