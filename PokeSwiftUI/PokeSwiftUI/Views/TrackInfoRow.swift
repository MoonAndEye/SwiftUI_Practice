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
            }.padding(.top, 12)
            
            HStack {
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
        }
        .background(Color.green)
        .frame(height: 120)
        .padding(.leading, 23)
        .padding(.trailing, 15)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.green)
        )
    }
}

struct TrackInfoRow_Previews: PreviewProvider {
    
//    let result = Result(trackId: 1, trackName: "My Name", collectionName: "My Collection")
    
    static var previews: some View {
        
        TrackInfoRow(result: Result(trackId: 1, trackName: "My Name", collectionName: "My Collection"))
    }
}
