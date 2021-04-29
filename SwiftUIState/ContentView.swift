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
        Button(action: {
            
        }, label: {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.green)
                .overlay(
                    Text("\(tapCount)")
                        .font(.system(size: 100, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                )
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
