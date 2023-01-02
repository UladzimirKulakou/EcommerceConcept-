//
//  CategoryBottonViewModel.swift
//  EcommerceConcept
//
//  Created by Владимир  on 25.12.22.
//

import SwiftUI

class CategoryButtonViewModel: ObservableObject {
    @Published var buttons: [CategoryButtomModel] = []
    
    init(){
        addButtons()
    }
    
    func addButtons() {
        buttons = bottonsData
        
    }
    
    func isButtonTapped(botton: CategoryButtomModel) {
//        botton.isBottonTapped.toggle()
    }
}

var bottonsData: [CategoryButtomModel] =  [
    CategoryButtomModel(image: "phones",
                        title: "Phones"
                       // isBottonTapped: true
                       ),
    CategoryButtomModel(image: "computers",
                        title: "Computer"
                    //    isBottonTapped: false
                       ),
    CategoryButtomModel(image: "health",
                        title: "Health"
                     //   isBottonTapped: false
                       ),
    CategoryButtomModel(image: "books",
                        title: "Books"
                     //   isBottonTapped: false
                       ),
    CategoryButtomModel(image: "searchQR",
                        title: "Watch"
                     //   isBottonTapped: false
                       )
]
