//
//  ContentView.swift
//  ILikeCats
//
//  Created by Kevin W Evans on 18/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var counterVM: CounterViewModel
    
    init() {
        counterVM = CounterViewModel()
    }
    
    var body: some View {
        
        ScrollView {
            VStack {
                Text("I like Cats")
                    .bold()
                    .foregroundColor(.red)
                    .font(.title)
                Text("Number of likes \(counterVM.value)")
                AsyncImage(url: URL(string:"https://placeimg.com/400/600/animals")) { image in
                    image.resizable()
                } placeholder: {
                    Color.red;
                }
                .frame(maxWidth: .infinity, maxHeight: 400)
                .aspectRatio(contentMode: .fit)
                
                Button(action: {
                    print("Like")
                    counterVM.increment()
                }){
                    HStack {
                        Image(systemName: "plus.circle")
                         Text("Vote")
                    }
                    .font(.largeTitle)
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
