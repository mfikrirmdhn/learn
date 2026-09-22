//
//  ExtractFunctionLearn.swift
//  Tutorial
//
//  Created by zxura on 22/09/26.
//

import SwiftUI

struct ExtractFunctionLearn: View {
    
    @State var bgColor: Color = Color.pink
    
    
    var body: some View {
        ZStack{
//            background
            bgColor
                .ignoresSafeArea()
            
//            content
            contentLayer
        }
    }
    
    var contentLayer: some View{
        VStack{
            Text("title")
                .font(.largeTitle)

            Button {
                pressButton()
            } label: {
                Text("Press me !")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Color.black
                    )
                    .cornerRadius(10)
            }   
        }
    }
    func pressButton() {
        self.bgColor = Color.yellow
    }
    
    
    
}

struct ExtractFunctionLearn_Previews: PreviewProvider {
    static var previews: some View {
        ExtractFunctionLearn()
    }
}
