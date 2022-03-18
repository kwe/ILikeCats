//
//  ContentView.swift
//  ILikeCats
//
//  Created by Kevin W Evans on 18/03/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfLikes = 0
    
    var body: some View {
        
        ScrollView {
            VStack {
                Text("I like Cats")
                    .bold()
                    .foregroundColor(.red)
                    .font(.title)
                Text("Number of likes \(numberOfLikes)")
                AsyncImage(url: URL(string:"https://placeimg.com/400/600/animals")) { image in
                    image.resizable()
                } placeholder: {
                    Color.red;
                }
                .frame(width: 400, height: 600)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                
                Button(action: {
                    print("Like")
                    numberOfLikes = numberOfLikes + 1
                }){
                    HStack {
                        Image(systemName: "plus.circle")
                        Text("Vote")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
