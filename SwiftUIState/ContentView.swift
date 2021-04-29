//
//  ContentView.swift
//  SwiftUIState
//
//  Created by John Kouris on 4/29/21.
//

import SwiftUI

struct ContentView: View {
    @State private var totalTapCount = 0
    @State private var redCount = 0
    @State private var blueCount = 0
    @State private var greenCount = 0
    
    var body: some View {
        VStack {
            Text("\(totalTapCount)")
                .font(.system(size: 150, weight: .heavy, design: .rounded))
            
            HStack {
                CounterButton(counter: $greenCount, totalTapCount: $totalTapCount, color: .green)
                CounterButton(counter: $blueCount, totalTapCount: $totalTapCount, color: .blue)
                CounterButton(counter: $redCount, totalTapCount: $totalTapCount, color: .red)
            }
        }
    }
}

struct CounterButton: View {
    @Binding var counter: Int
    @Binding var totalTapCount: Int
    
    var color: Color
    
    var body: some View {
        Button(action: {
            counter += 1
            totalTapCount += 1
        }, label: {
            Circle()
                .frame(width: 100, height: 200)
                .foregroundColor(color)
                .overlay(
                    Text("\(counter)")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
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
