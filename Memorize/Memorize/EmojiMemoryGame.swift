//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Seth Petel on 2021-09-20.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
   

//
//    //private(set) var theme = globalThemes.randomElement()!
//
//    init(){
//        model = EmojiMemoryGame.createMemoryGame(currentTheme: theme)
//        }
//
//
    private static let emojis = ["🚗","🚕","🚙","🚌","🚎","🏎","🚓","🚑","🚒"]
    
    static func createMemoryGame () -> MemoryGame<String> {
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count - 1) { pairIndex in
         emojis[pairIndex]
        }
    }
    
    @Published private var model : MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    

    // MARK: - Intent(s)
    func choose(_ card: MemoryGame<String>.Card)  {
        model.choose(card)
    }
}
