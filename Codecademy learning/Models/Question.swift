//
//  Question.swift
//  Codecademy learning
//
//  Created by Jorge Pinto on 26/11/2024.
//
import Foundation

struct Question: Hashable { //colocaruma hash na minha estrutura assim já é permitido utilizar a estrutura question em dicionários
    let questionText: String
    let possibleAnswer: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "Who invented the world wide Web?",
                 possibleAnswer: [
                    "Steve Jobs",
                    "Linus Torvalds",
                    "Bill Gates",
                    "Tim Berners-Lee"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "What was the first object oriented programming language?",
                 possibleAnswer: [
                    "Simula",
                    "Python",
                    "Swift",
                    "C"
                 ],
                 correctAnswerIndex: 0)
    ]
}
