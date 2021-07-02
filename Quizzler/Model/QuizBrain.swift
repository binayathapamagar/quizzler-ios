//
//  QuizBrain.swift
//  Quizzler
//
//  Created by Binaya on 13/05/2021.
//

import Foundation

struct QuizBrain {

    // Questions for multiple choice with 3 buttons in the UI
    let quiz = [
        QuizQuestions(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        QuizQuestions(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        QuizQuestions(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        QuizQuestions(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        QuizQuestions(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        QuizQuestions(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        QuizQuestions(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        QuizQuestions(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        QuizQuestions(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        QuizQuestions(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
        
    ]
    
    // Question for multiple choices with 2 buttons in the UI
//    let quiz = [
//        QuizQuestions(q: "A slug's blood is green.", a: "True"),
//        QuizQuestions(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
//        QuizQuestions(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
//        QuizQuestions(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
//        QuizQuestions(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
//        QuizQuestions(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
//        QuizQuestions(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
//        QuizQuestions(q: "Google was originally called 'Backrub'.", a: "True"),
//        QuizQuestions(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
//        QuizQuestions(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
//        QuizQuestions(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
//        QuizQuestions(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
//    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].correctAnswer {
            score += 1
            return true
        }else {
            return false
        }
    }
    
    func getQuestion() -> String{
        return quiz[questionNumber].question
    }
    
    func getProgess() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }else {
            score = 0
            questionNumber = 0
        }
    }
    
    func getChoices () -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getScore () -> Int {
        return score
    }
    
}
