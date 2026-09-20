//
//  ButtonLearn.swift
//  Tutorial
//
//  Created by zxura on 20/09/26.
//

import SwiftUI

struct ButtonLearn: View {
    
    @State var title: String = "this my title"
    var body: some View {
        VStack (spacing: 20){
            Text(title)
            
            Button("Press Me") {
                self.title = "why u press me!"
            }
            .accentColor(.red)
            
            Button {
                self.title = "Press me 2"
            } label: {
                Text("Save" .uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.all, 10)
                    .padding(.horizontal,40)
                    .background(
                        Color.green
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    )
            }
            
            Button {
                self.title = "Press me 3"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75,height: 75)
                    .shadow(radius: 5)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.pink)
                    }
            }
            
            Button {
                self.title = "Press me 4"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                    .padding(.all, 20)
                    .padding(.horizontal,30)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 3.0)
                    )
            }

        }

    }
}

struct ButtonLearn_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLearn()
    }
}
