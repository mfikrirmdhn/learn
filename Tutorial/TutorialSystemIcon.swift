//
//  TutorialSystemIcon.swift
//  Tutorial
//
//  Created by zxura on 29/08/26.
//

import SwiftUI

struct TutorialSystemIcon: View {
    var body: some View {
        Image(systemName: "person.badge.minus")
            .renderingMode(.original)
            
            .resizable()
            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .frame(width: 300, height: 300)
//            .foregroundColor(Color.red)
        
    }
}

struct TutorialSystemIcon_Previews: PreviewProvider {
    static var previews: some View {
        TutorialSystemIcon()
    }
}
