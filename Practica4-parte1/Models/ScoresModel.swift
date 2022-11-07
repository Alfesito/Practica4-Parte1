//
//  ScoresModel.swift
//  P4_1_FCM
//
//  Created by b023 DIT UPM on 7/11/22.
//

import Foundation

class ScoresModel: ObservableObject {
    
    @Published private(set) var acertadas: Set<Int> = []
    
    func check(respuesta: String, quiz: QuizItem) {
        let r1 = respuesta.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        
        let r2 = respuesta.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        
        if r1 == r2 {
            acertadas.insert(quiz.id)
        }
    }

}



