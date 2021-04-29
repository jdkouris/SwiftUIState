//
//  ContentView.swift
//  SwiftUIState
//
//  Created by John Kouris on 4/29/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPlaying = false
    @State private var tapCount = 0
    
    var body: some View {
        VStack {
            Button(action: {
                isPlaying.toggle()
                tapCount += 1
            }, label: {
                ZStack {
                    
                    Circle()
                        .frame(width: 200, height: 200, alignment: .center)
                        .foregroundColor(isPlaying ? .red : .green)
                    Text("\(tapCount)")
                        .font(.system(size: 100))
                        .foregroundColor(.white)
                }
            }).padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
