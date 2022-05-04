//
//  GameViewModel.swift
//  Code History
//
//  Created by Eric Edmonds on 4/23/22.
//

import SwiftUI

class GameViewModel: ObservableObject {
    //Published properties
    @Published private var game = Game()
    // internal propertie
    var currentQuestion: Question{
        game.currentQuestion
    }
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1)/\(game.numberOfQuestions)"
    }
    // 1
       var guessWasMade: Bool {
            if let _ = game.guesses[currentQuestion] {
                return true
            } else {
                return false
            }
        }
     
        // MARK: - Internal Methods
        // 2
        func makeGuess(atIndex index: Int) {
            game.makeGuessForCurrentQuestion(atIndex: index)
        }
        // 3
        func displayNextScreen() {
            game.updateGameStatus()
        }
}
