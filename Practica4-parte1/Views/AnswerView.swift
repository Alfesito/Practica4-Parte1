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
        //TextField
        
        //Si la respuesta es correcta, se debe de mostrar una alerta si la pregunta es correcta o incorrecta
        
        //Contador de quizzes, utilizando un array con los ids de los quizzes acertados
    }
}

/*struct AnswerView_Previews: PreviewProvider {
    static var previews: some View {
        AnswerView()
    }
}*/
