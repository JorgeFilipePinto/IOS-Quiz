//
//  ScoreViewModel.swift
//  Codecademy learning
//
//  Created by Jorge Pinto on 14/12/2024.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
