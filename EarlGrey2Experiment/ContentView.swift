//
//  ContentView.swift
//  EarlGrey2SwiftUIExperiment
//
//  Created by Adil Hussain on 13/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count = 0
    
    var body: some View {
        Text("\(count)")
            .accessibilityIdentifier("CountLabel")
            .padding()
        Button(action: incrementCount) {
            Text("Increment Count")
        }
        .accessibilityIdentifier("IncrementCountButton")
    }
    
    private func incrementCount() {
        count += 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
