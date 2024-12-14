//
//  ScoreView.swift
//  Codecademy learning
//
//  Created by Jorge Pinto on 14/12/2024.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                VStack {
                    Spacer()
                    Text("Final Score:")
                        .font(.body)
                    Text("\(viewModel.percentage)%")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    Spacer()
                    VStack {
                        Text("\(viewModel.correctGuesses)✅")
                            .font(.title)
                            .bold()
                        Text("\(viewModel.incorrectGuesses)❌")
                            .font(.title)
                            .bold()
                    }
                    Spacer()
                }
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Re-take Quiz")
                    })
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}


struct Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 1, incorrectGuesses: 1))
    }
}
