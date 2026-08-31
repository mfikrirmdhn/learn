//
//  StacksLearn.swift
//  Tutorial
//
//  Created by zxura on 31/08/26.
//

import SwiftUI

struct StacksLearn: View {
//    HStack = Horizontal
//    VStack = Vertical
//    ZStack = Back To Front
    var body: some View {
        
        ZStack(alignment: .topLeading){
            Rectangle()
                .fill(.red)
                .frame(width: 300, height: 500)

            VStack(alignment: .leading){
                RoundedRectangle(cornerRadius: 20)
                    .fill(.yellow)
                    .frame(width: 45,height: 50)
                RoundedRectangle(cornerRadius: 20)
                    .fill(.yellow)
                    .frame(width: 45,height: 50)
                RoundedRectangle(cornerRadius: 20)
                    .fill(.yellow)
                    .frame(width: 45,height: 50)
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.blue)
                        .frame(width: 45,height: 50)
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.blue)
                        .frame(width: 45,height: 50)
                }
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .padding()
            
        }
       
    }
}

struct StacksLearn_Previews: PreviewProvider {
    static var previews: some View {
        StacksLearn()
    }
}
