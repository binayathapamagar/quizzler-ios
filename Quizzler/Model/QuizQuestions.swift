//
//  QuizQuestions.swift
//  Quizzler
//
//  Created by Binaya on 13/05/2021.
//

import Foundation

struct QuizQuestions {
    var question: String
    var answers: [String]
    var correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        question = q
        answers = a
        self.correctAnswer = correctAnswer
    }
}
