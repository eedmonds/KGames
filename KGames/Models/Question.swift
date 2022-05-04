//
//  Question.swift
//  Code History
//
//  Created by Eric Edmonds on 3/24/22.
//

import Foundation

struct Question: Hashable { // Add Hashable Conformance
 var questionText: String  // property will store the actual question that we want to display in the view
    
 var possibleAnswers: [String] // property will store an array of strings that the view will display as the possible                                answers to the question
 var correctAnswerIndex: Int // prperty will store the index of the correct answer in the possibleAnswers array
    
    
 // Creating an instance of the question
    static var allQuestions = [
          Question(questionText: "What is Ryan going to do next?",
                   possibleAnswers: [
                      "Dive in the pool",
                      "Jump in the air",
                      "Run down the street",
                      "Eat some pizza"
                   ],
                   correctAnswerIndex: 0),
          Question(questionText: "Count all the flower. How many do you see?",
                   possibleAnswers: [
                      "9",
                      "8",
                      "7",
                      "1"
                   ],
                   correctAnswerIndex: 0)
      ]
  }
    
