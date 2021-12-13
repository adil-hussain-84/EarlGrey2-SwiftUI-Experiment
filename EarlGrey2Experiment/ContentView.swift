//
//  ContentView.swift
//  EarlGrey2SwiftUIExperiment
//
//  Created by Adil Hussain on 13/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .accessibilityIdentifier("HelloWorldLabel")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
