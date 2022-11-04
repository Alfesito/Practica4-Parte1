//
//  AnswerView.swift
//  Practica4-parte1
//
//  Created by Andrés Alfaro Fernández on 4/11/22.
//

import SwiftUI

struct AnswerView: View {
    
    var quizItem : QuizItem

    var body: some View {
        Text(quizItem.question)
    }
}

/*struct AnswerView_Previews: PreviewProvider {
    static var previews: some View {
        AnswerView()
    }
}*/
