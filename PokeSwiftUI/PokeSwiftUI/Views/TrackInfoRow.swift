//
//  TrackInfoRow.swift
//  PokeSwiftUI
//
//  Created by Moon on 2020/3/5.
//  Copyright © 2020 CMoney. All rights reserved.
//

import SwiftUI

//struct Result: Codable {
//    var trackId: Int
//    var trackName: String
//    var collectionName: String
//}

struct TrackInfoRow: View {
    
    @State var result: Result
    @State var expended: Bool
    
    var body: some View {
        
        VStack {
            HStack {
                Image("妙娃種子")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
                    .shadow(radius: 4.0)
                Spacer()
                VStack(alignment: .trailing) {
                    Text(result.trackName)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                    Text(result.collectionName)
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
            }
            .padding(.top, 12)
            Spacer()
            
            HStack(spacing: expended ? 20 : 30) {
                Spacer()
                Button(action: {
                    print("Fav")
                }) {
                    Image(systemName: "star")
                        .modifier(ToolButtonViewModifier())
                }
                Button(action: {
                    print("Panel")
                }) {
                    Image(systemName: "chart.bar")
                    .modifier(ToolButtonViewModifier())
                }
                Button(action: {
                    print("Web")
                }) {
                    Image(systemName: "info.circle")
                    .modifier(ToolButtonViewModifier())
                }
            }
            .padding(.bottom, 12)
            .opacity(expended ? 1.0 : 0.0)
            .frame(maxHeight: expended ? .infinity : 0)
        }
        .frame(height: 120)
        .padding(.leading, 23)
        .padding(.trailing, 15)
        .frame(height: expended ? 120.0 : 80.0)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(
                    gradient: Gradient(colors: [.white, .green]),
                    startPoint: .leading,
                    endPoint: .trailing
                ))
        )
            .padding(.horizontal)
            .onTapGesture {
                self.expended.toggle()
        }
    }
}

struct TrackInfoRow_Previews: PreviewProvider {
    
//    let result = Result(trackId: 1, trackName: "My Name", collectionName: "My Collection")
    
    static var previews: some View {
        VStack {
            TrackInfoRow(result: Result(trackId: 1, trackName: "My Name", collectionName: "My Collection"), expended: false)
            TrackInfoRow(result: Result(trackId: 2, trackName: "2 Name", collectionName: "My Collection"), expended: true)
            TrackInfoRow(result: Result(trackId: 3, trackName: "3 Name", collectionName: "3 Collection"), expended: false)
        }
        
    }
}
