//
//  SelectCategory.swift
//  EcommerceConcept
//
//  Created by Владимир  on 13.12.22.
//

import SwiftUI

struct SelectCategory: View {
    var categoryName: String
    var bottonName: String
    
    var body: some View {
        HStack(alignment: .center){
            Text(categoryName)
                .font(Font.custom("MarkPro-Medium", size: 25))
                .kerning(-1)
            Spacer()
            Button(action: {
                
            }, label: {
                Text(bottonName)
                    .foregroundColor(Color(red: 255 / 256, green: 110 / 256, blue: 78 / 256))
                    .font(Font.custom("MarkPro-Light", size: 15))
                    .kerning(-1)
                
            })
        }.padding(.horizontal)
    }
}

struct SelectCategory_Previews: PreviewProvider {
    static var previews: some View {
        SelectCategory(categoryName: "Select Category", bottonName: "view all")
    }
}
