//
//  ImageLearn.swift
//  Tutorial
//
//  Created by zxura on 31/08/26.
//

import SwiftUI

struct ImageLearn: View {
    var body: some View {
        Image("image1")
            .resizable()
//            .aspectRatio( contentMode: .fit)
//            .scaledToFit()
            .scaledToFill()
            .frame(width: 280, height: 200)
            .clipped()
//            .cornerRadius(150)
            .clipShape(
//            Circle()
//                RoundedRectangle(cornerRadius: 20)
                Ellipse()
            )
    }
}

struct ImageLearn_Previews: PreviewProvider {
    static var previews: some View {
        ImageLearn()
    }
}
