//
//  SearchBar.swift
//  EcommerceConcept
//
//  Created by Владимир  on 18.12.22.
//

import SwiftUI

struct SearchBar: View {
    @State var searchingFor = ""
    let phones = ["","",""]
    var body: some View {
        HStack{
            HStack{
                Button(action: {
                    
                }, label: {
                    ZStack{
                        Image("searchImage")
                    }
                    
                })
                .padding(.horizontal)
                TextField("Search", text: $searchingFor)
                    .font(Font.custom("MarkPro-Light", size: 12))
                    .kerning(-1)
            }
            .frame(height: 34)
            .overlay(
            RoundedRectangle(cornerRadius: 50)
                .stroke(lineWidth: 1)
                .opacity(0.2))
            
            Button(action: {
                
            }, label: {
                ZStack{
                    Image("searchQRCicle")
                    Image("searchQR")
                }
                
            })
            .frame(width: 34, height: 34)
            
        }
        .padding(.horizontal)
    }
    var results: [String] {
        if searchingFor.isEmpty {
            return phones
        } else {
            return phones.filter {$0.contains(searchingFor)}
        }
    }
}



struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
