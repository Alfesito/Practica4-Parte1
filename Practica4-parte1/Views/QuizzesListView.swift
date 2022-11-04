//
//  ContentView.swift
//  Practica4-parte1
//
//  Created by Andrés Alfaro Fernández on 3/11/22.
//

import SwiftUI

struct QuizzesListView: View {
    
    @EnvironmentObject var quizzesModel : QuizzesModel
    
    var body: some View{
        VStack{
            Text("Quizzes")
            List{
                ForEach(quizzesModel.quizzes){ qi in
                    QuizView(quizItem: qi)
                }
            }
            .onAppear{quizzesModel.load()}
        }
    }
}

/*struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuizzesListView()
    }
}*/
