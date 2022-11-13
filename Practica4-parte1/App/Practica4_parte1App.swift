//
//  Practica4_parte1App.swift
//  Practica4-parte1
//
//  Created by Andrés Alfaro Fernández on 3/11/22.
//

import SwiftUI

@main
struct Practica4_parte1App: App {
    
    let quizzesModel = QuizzesModel()
    let scoresModel = ScoresModel()
    
    var body: some Scene {
        WindowGroup {
            QuizzesListView()
                .environmentObject(quizzesModel)
                .environmentObject(scoresModel)

        }
    }
}
