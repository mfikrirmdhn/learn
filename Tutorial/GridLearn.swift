//
//  GridLearn.swift
//  Tutorial
//
//  Created by zxura on 17/09/26.
//

import SwiftUI

struct GridLearn: View {
    let columns = [
        GridItem(.flexible(), spacing:12, alignment:nil ),
        GridItem(.flexible(), spacing:12, alignment:nil ),
        GridItem(.flexible(), spacing:12, alignment:nil ),
        
    ]
    var body: some View {
        
        ScrollView{
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 20,
                pinnedViews: [
                    .sectionHeaders
                ]
            ) {
                
                Section {
                    ForEach(0..<10) { index in
                        Rectangle()
                            .fill(.secondary)
                            .frame(height: 150)
                            
                            
                    }
                } header: {
                    Text("Section 1")
                        .font(.title)
                        .padding(.all,10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 10)
                        .padding(.horizontal,10)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .padding(.all,10)
                        
                }
                
                Section {
                    ForEach(0..<15) { index in
                        Rectangle()
                            .frame(height: 150)
                            
                            
                    }
                } header: {
                    Text("Section 2")
                        .font(.title)
                        .padding(.all,10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 10)
                        .padding(.horizontal,10)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .padding(.all,10)
                        
                }

                
            }
        }
    }
}

struct GridLearn_Previews: PreviewProvider {
    static var previews: some View {
        GridLearn()
    }
}
