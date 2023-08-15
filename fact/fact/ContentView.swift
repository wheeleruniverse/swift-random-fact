//
//  ContentView.swift
//  fact
//
//  Created by Justin Wheeler on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var fact = getFact()
    
    var body: some View {
        VStack {
            Text("Random Fact")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
            Spacer()
            Text(fact)
                .font(.body)
                .foregroundColor(Color.black)
                .lineSpacing(24.0)
            Spacer()
            Button {
                fact = getFact()
            } label: {
                Text("Refresh")
                    .padding(.horizontal, 24)
                    .padding(.vertical, 16)
                    .background(.blue)
                    .cornerRadius(8)
                    .font(.headline)
                    .foregroundColor(.white)
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let facts = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna 1.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna 2.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna 3."
]

func getFact() -> String {
    facts[Int.random(in: 0..<facts.count)]
}
