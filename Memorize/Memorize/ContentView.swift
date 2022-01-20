//
//  ContentView.swift
//  Memorize
//
//  Created by Seth Petel on 2021-09-20.
//

import SwiftUI

struct ContentView: View {
    
    // View is read only except for this observed object
    @ObservedObject var viewModel: EmojiMemoryGame
    
    
    var body: some View {
        
        VStack {
            Text("Memory Game")
                .font(.largeTitle)
                .fontWeight(.semibold)
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    
                    ForEach(viewModel.cards) {  card in
                        CardView(card: card).aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture {
                                viewModel.choose(card)
                            }
                    }
                }
            }
            .padding(.horizontal)

        }
    }
   
    
}



struct CardView: View {
    
    let card: MemoryGame<String>.Card

    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp {
                // use colour from viewmodel
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else if card.isMatched {
                shape.opacity(0)
            }
            else {
                shape.fill()
 
            }
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
            .preferredColorScheme(.light)
//        ContentView(viewModel: game )
//            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        
    }
}
