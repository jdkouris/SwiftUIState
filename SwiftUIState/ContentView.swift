//
//  ContentView.swift
//  SwiftUIState
//
//  Created by John Kouris on 4/29/21.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    
    var body: some View {
        VStack {
            CounterButton(counter: $tapCount, color: .green)
            CounterButton(counter: $tapCount, color: .blue)
            CounterButton(counter: $tapCount, color: .red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct CounterButton: View {
    @Binding var counter: Int
    
    var color: Color
    
    var body: some View {
        Button(action: {
            counter += 1
        }, label: {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
                .overlay(
                    Text("\(counter)")
                        .font(.system(size: 100, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                )
        })
    }
    
    
}
