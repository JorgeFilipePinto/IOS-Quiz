//
//  ChoiceTextVeiw.swift
//  Codecademy learning
//
//  Created by Jorge Pinto on 26/11/2024.
//
import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(GameColor.accent, width: 4)
    }
}


struct ChoiceTextView_Previwes: PreviewProvider {
    static var previews : some View {
        ChoiceTextView(choiceText: "Choice Text!")
    }
}
