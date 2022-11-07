//
//  AnswerView.swift
//  Practica4-parte1
//
//  Created by Andrés Alfaro Fernández on 4/11/22.
//
// creacion branch feature_answer_lab

import SwiftUI

struct AnswerView: View {
    
    var quizItem:QuizItem
    
    @EnvironmentObject var scoresModel: ScoresModel

    @State var answer: String = ""
    
    @State var showAlert = false
    
    var body: some View {
        
        VStack{
            HStack{
                
                //Pregunta
                Text(quizItem.question)
                    .font(.system(size: 20, weight: .bold))
                
                //Boton de favoritos
                Image(quizItem.favourite ? "star_yellow" : "star_grey")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .scaledToFit()
                
            }
            
            TextField("Respuesta",
                      text: $answer,
                      onCommit: {
                showAlert = true
            }
                
            )
            .alert(isPresented: $showAlert) {
                let string1 = quizItem.answer.lowercased().trimmingCharacters(in:
                        .whitespacesAndNewlines)
                let string2 = answer.lowercased().trimmingCharacters(in:
                        .whitespacesAndNewlines)
                
                return Alert(title: Text("Resultado"),
                             message: Text(string1 == string2 ? "ok" : "mal"),
                             dismissButton: .default(Text("ok"))
                )
            }
            
            Button(action: {
                showAlert = true
            }) {
                Text("Comprobar")
            }
            
            
        } // end HStack
        //Imagen de la pregunta
        AsyncImage(url: quizItem.attachment?.url){ phase in // 1
            if let image = phase.image { // 2
                // if the image is valid
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } else if phase.error != nil { // 3
                // some kind of error appears
                Text("No image available")
            } else {
                //appears as placeholder image
                Image(systemName: "photo.circle.fill") // 4
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }.frame(width: 360, height: 240, alignment: .center)
            .scaledToFit()
            .clipShape (RoundedRectangle (cornerRadius: 20))
            .overlay (RoundedRectangle (cornerRadius: 20).stroke(lineWidth: 4))
            .padding(30)
        
        
        HStack{
            //Score
            //                  Fatal error: No ObservableObject of type ScoresModel found
            Text("Score: \(scoresModel.acertadas.count)")
            
            //Imagen del autor
            AsyncImage(url: quizItem.author?.photo?.url){ phase in // 1
                if let image = phase.image { // 2
                    // if the image is valid
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } else if phase.error != nil { // 3
                    // some kind of error appears
                    Text("No image available")
                } else {
                    //appears as placeholder image
                    Image(systemName: "photo.circle.fill") // 4
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }.frame(width: 50, height: 50)
            .clipShape (Circle ())
            
        }
        
        
    }
}
            
            
            
            /*
            
            VStack{
                    HStack{
                        //Imagen de la pregunta
                        
                        VStack{
                            HStack{
                                //Boton de favoritos
                                //Imagen del autor
                                
                                //Nombre del autor
                                Text(quizItem.author?.username ?? "Someone")
                                    .font(.system(size: 12, weight: .light))
                            }
                            
                            HStack{
                                //Pregunta
                                
                            }
                        }
                    }
                }
            
        
    }
}
*/
/*
struct QuizPlayView_Previews: PreviewProvider {
    static var previews: some View {
        QuizPlayView()
    }
}
*/
