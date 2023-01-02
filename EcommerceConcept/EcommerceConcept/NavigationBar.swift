//
//  NavigationBar.swift
//  EcommerceConcept
//
//  Created by Владимир  on 18.12.22.
//

import SwiftUI

struct NavigationBar: View {
    
    @ObservedObject var viewModel = CategoryButtonViewModel()
    @State private var isButtonTapped: Bool = false
    
    
    var body: some View {
        
        NavigationView{
            VStack{
                
                SelectCategory(categoryName: "Select Category", bottonName: "view")
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(viewModel.buttons){ button in
                            CategoryButton(isButtonActive: $isButtonTapped, buttonText: button.title, image: button.image)
                                .padding(.horizontal, 3)
                                
                        }.onTapGesture {
                            isButtonTapped.toggle()
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
