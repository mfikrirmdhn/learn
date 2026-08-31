//
//  Backgound&OverLay.swift
//  Tutorial
//
//  Created by zxura on 31/08/26.
//

import SwiftUI

struct BackgoundAndOverLay: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .frame(width: 200, height: 200, alignment: .center)
//            .background(
//                LinearGradient(gradient: Gradient(colors: [Color.red, Color.yellow]), startPoint: .trailing, endPoint: .leading)
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.secondary, Color.green]), startPoint: .topLeading, endPoint: .bottomLeading))
//
//            )
//            .frame(width: 230 ,height: 230)
//            .background(
//                Circle()
//                    .fill(.orange)
//            )
        
        
        
//        Rectangle()
//            .frame(width: 200, height: 200)
//            .foregroundColor(.green)
//            .overlay (
//                Rectangle()
//                    .frame(width: 150, height: 150)
//                    .foregroundColor(.blue),
//                alignment: .topLeading
//
//            )
//            .background(
//                Rectangle()
//                    .frame(width: 250, height: 250),
//                alignment: .bottomLeading
//            )
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(LinearGradient(
                        gradient: Gradient(colors: [.blue, .purple]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                          
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .secondary, radius: 30, x: 0.0 ,y: 7)
                    .overlay(
                        Circle()
                            .fill(LinearGradient(
                                gradient: Gradient(colors: [.red, .yellow]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                            )
                            
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.system(size: 20, weight: .semibold, design: .monospaced)
                                          
                                    )
                                    .foregroundColor(.white))
                            .shadow(color: .secondary, radius: 25, x: 5 ,y: 10)
                        
                        ,alignment: .bottomTrailing
                    )
            
            )
        
        
            
    }
}

struct BackgoundAndOverLay_Previews: PreviewProvider {
    static var previews: some View {
        BackgoundAndOverLay()
    }
}
