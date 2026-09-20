//
//  StateLearn.swift
//  Tutorial
//
//  Created by zxura on 20/09/26.
//

import SwiftUI

struct StateLearn: View {
    
    @State var background: Color = Color.gray
    @State var title: String = "Coba Tekan tombol"
    @State var count: Int = 2
    
    var body: some View {
        ZStack{
            
            background
                .ignoresSafeArea(.all)
            
            
            VStack(spacing: 20){
                Text(title)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.system(
                        size: 18,
                        weight: .semibold,
                        design: .monospaced
                    ))
                    .underline()
                
                HStack(spacing: 10){
                    
                    Button("Button 1") {
                        background = Color.purple
                        self.count *= 2
                        self.title = "Pertambahan"
                    }
                    
                    Button("Button 2") {
                        background = Color.teal
                        self.count /= 3
                        self.title = "Pengurangan"
                    }
                }
            }.foregroundColor(.white)
            
            
        }
    }
}

struct StateLearn_Previews: PreviewProvider {
    static var previews: some View {
        StateLearn()
    }
}
