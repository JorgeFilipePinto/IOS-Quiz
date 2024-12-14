//
//  ContentView.swift
//  Codecademy learning
//
//  Created by Jorge Pinto on 25/11/2024.
//
import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea() //.ignoresSafeArea() irá ignorar a cor das bordas de cima e de baixo
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
            .environmentObject(viewModel)
        }
        .background(
            NavigationLink(destination: ScoreView(viewModel:
             ScoreViewModel(correctGuesses: viewModel.correctGuesses,
                            incorrectGuesses: viewModel.incorrectGuesses)),
                           isActive: .constant(viewModel.gameIsOver),
                           label: { EmptyView()})
        )
    }
}

struct Preview: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
