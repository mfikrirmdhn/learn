//
//  SafeAreaLearn.swift
//  Tutorial
//
//  Created by zxura on 17/09/26.
//

import SwiftUI

struct SafeAreaLearn: View {
    var body: some View {
        ScrollView {
            
            VStack {
                Text("This Safe")
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading,10)
                
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 150)
                        .padding(.all, 20)
                        .shadow(radius: 10)
                    
                }
            }
        }
        .background(
            Color.red
                .ignoresSafeArea()
        )
    }
}
  
struct SafeAreaLearn_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaLearn()
    }
}
