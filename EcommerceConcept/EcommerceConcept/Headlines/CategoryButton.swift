//
//  CategoryBotton.swift
//  EcommerceConcept
//
//  Created by Владимир  on 13.12.22.
//

import SwiftUI

struct CategoryButton: View {
    
    @Binding var isButtonActive: Bool
    var buttonText: String
    var image: String
    
    var body: some View {
        VStack{
            ZStack{
                Image(isButtonActive ? "activeBottomCategory" : "passiveBottomCategory")
                    .frame(width: 71, height: 71)
                    .aspectRatio(contentMode: .fill)
                    
                Image(isButtonActive ? image : image)
                   
                    
            }
            
            
            Text(buttonText)
                .fontWeight(.medium)
                .foregroundColor(isButtonActive ? Color(red: 255 / 256, green: 110 / 256, blue: 78 / 256): Color(.black))
                .font(Font.custom("MarkPro", size: 12))
                .kerning(-0.33)
        }
    }
}

//struct CategoryBotton_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryButton( isButtonActive: <#Binding<Bool>#>, buttonText: "Phones", image: "phones")
//    }
//}
