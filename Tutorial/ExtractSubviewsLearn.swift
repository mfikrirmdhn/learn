//
//  ExtractSubviewsLearn.swift
//  Tutorial
//
//  Created by zxura on 22/09/26.
//

import SwiftUI

struct ExtractSubviewsLearn: View {
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea()
            
         
            contentLayer
            
        }
    }
    
    var contentLayer: some View{
        HStack{
            ContentItem(title: "Apple", count: 0, bgColor: .red)
            ContentItem(title: "Banana", count: 0, bgColor: .blue)
            ContentItem(title: "Pie", count: 0, bgColor: .green)
        }
    }
}

struct ExtractSubviewsLearn_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsLearn()
    }
}

struct ContentItem: View {
    
    let title: String
    let count: Int
    let bgColor: Color
    
    
    
    var body: some View {
        VStack(spacing: 8){
            Text("\(count)")
            Text(title)
        }
        .foregroundColor(.white)
        .padding()
        .padding(.horizontal,10)
        .background(bgColor)
        .cornerRadius(10)
    }
}
