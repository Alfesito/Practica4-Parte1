//
//  ContentView.swift
//  Practica4-parte1
//
//  Created by Andrés Alfaro Fernández on 3/11/22.
//

import SwiftUI

struct QuizzesListView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuizzesListView()
    }
}
