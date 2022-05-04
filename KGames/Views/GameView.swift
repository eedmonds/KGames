//
//  ContentView.swift
//  Code History
//
//  Created by Eric Edmonds on 3/11/22.
//

import SwiftUI

struct GameView: View {
  @StateObject var viewModel = GameViewModel() // Updated
    let question: Question
    
  var body: some View {
        ZStack{
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)// Updated from hard-codes string
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
            .environmentObject(viewModel)
                
            HStack{
                ForEach (0..<question.possibleAnswers.count, id: \.self) { answerIndex in
                    //Define the view that will be retrurned for each index
                    Button(action: {
                        print("Tapped on Choice\(question.possibleAnswers[answerIndex])")
                        @State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
                    }, label: {
                        // These text views all have the same modifieers being applied to them.
                    ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                })
                }
                
            }
        }
    }
    .foregroundColor(.white)
    .navigationBarHidden(true)
    .environmentObject(viewModel)
 }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
