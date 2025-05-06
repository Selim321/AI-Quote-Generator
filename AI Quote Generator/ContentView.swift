//
//  ContentView.swift
//  AI Quote Generator
//
//  Created by Selim Sahrane on 05/05/2025.
//

import SwiftUI

let quotes = [
    "The future belongs to those who build it.",
    "AI doesn’t replace humans, it amplifies them.",
    "Code + Data = Magic.",
    "Great apps feel like magic, powered by math."
]

struct ContentView: View {
    @State private var currentQuote = quotes.randomElement()!

    var body: some View {
        VStack(spacing: 40) {
            Text("🤖 AI Quote")
                .font(.largeTitle)
                .bold()

            Text("“\(currentQuote)”")
                .font(.title2)
                .italic()
                .padding()

            Button("New Quote") {
                currentQuote = quotes.randomElement()!
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(12)
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
