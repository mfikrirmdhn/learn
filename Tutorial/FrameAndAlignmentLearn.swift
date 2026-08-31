//
//  FrameAndAlignmentLearn.swift
//  Tutorial
//
//  Created by zxura on 31/08/26.
//

import SwiftUI

struct FrameAndAlignmentLearn: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.green)
            .frame(height: 100, alignment: .bottom)
            .background(Color.red)
            .frame(width: 200, height: 200,alignment: .bottomTrailing)
            .background(.blue)
            .frame(maxHeight: 300)
            .background(.secondary)
            .frame(width: 300,alignment: .trailing)
            .background(.purple)
            .frame(maxWidth: .infinity)
            .background(.yellow)
    }
}

struct FrameAndAlignmentLearn_Previews: PreviewProvider {
    static var previews: some View {
        FrameAndAlignmentLearn()
    }
}
