//
//  BindingLearn.swift
//  Tutorial
//
//  Created by zxura on 22/09/26.
//

import SwiftUI

struct BindingLearn: View {
    
    @State var bgColor: Color = Color.red
    @State var title: String = "Title"
    
    var body: some View {
        ZStack{
                bgColor
                .ignoresSafeArea()
            
            VStack{
                Text(title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                
                
                ButtonView(bgColor: $bgColor, title: $title)

            }
        }
    }
}

struct BindingLearn_Previews: PreviewProvider {
    static var previews: some View {
        BindingLearn()
    }
}

struct ButtonView: View {
    
    @Binding var bgColor: Color
    @State var buttonBg: Color = Color.green
    @Binding var title: String
    
    
    var body: some View {
        Button {
            bgColor = Color.yellow
            title = "Apple"
            buttonBg = Color.blue
        } label: {
            Text("press me!")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 20)
                .background(buttonBg)
                .cornerRadius(20)
        }
    }
}
