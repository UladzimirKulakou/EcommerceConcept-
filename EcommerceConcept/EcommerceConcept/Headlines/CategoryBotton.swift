//
//  CategoryBotton.swift
//  EcommerceConcept
//
//  Created by Владимир  on 13.12.22.
//

import SwiftUI

struct CategoryBotton: View {
    
    var isBottonActive: Bool = true
    
    var body: some View {
        VStack{
            ZStack{
                Image(isBottonActive ? "activeBottomCategory" : "passiveBottomCategory")
                    .frame(width: 71, height: 71)
                    .aspectRatio(contentMode: .fill)
                    
                Image(isBottonActive ? "phones" : "passiveBottomCategory")
                   
                    
            }
            
            
            Text("Phones")
                .fontWeight(.medium)
                .foregroundColor(isBottonActive ? Color(red: 255 / 256, green: 110 / 256, blue: 78 / 256): Color(.black))
                .font(Font.custom("MarkPro", size: 12))
                .kerning(-0.33)
        }
    }
}

struct CategoryBotton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryBotton()
    }
}
