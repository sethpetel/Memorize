//
//  MemoryGame.swift
//  Memorize
//
//  Created by Seth Petel on 2021-09-20.
//

import Foundation


struct MemoryGame <CardContent> where CardContent: Equatable {
    private(set) var cards: Array<Card>

    
    
    private var indexOfTheOneAndOnlyFaceUpCard: Int? // initialized as no index when the game starts
    
    mutating func choose (_ card: Card){

        // First argument in cards array with the same ID as the card being passed to choose, it's not face up, and not matched.
        if let chosenIndex = cards.firstIndex(where: {$0.id == card.id}),
           !cards[chosenIndex].isFaceUp,
           !cards[chosenIndex].isMatched
        {
            
            // If card does match, it will change the score.
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                }
                indexOfTheOneAndOnlyFaceUpCard = nil
            } else {
                for index in cards.indices {
                    cards[index].isFaceUp = false

                }
                indexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
            cards[chosenIndex].isFaceUp.toggle()
        }
        print("\(cards)")
    }
    
    
//["🚗","🚕","🚙","🚌","🚎","🏎","🚓","🚑","🚒"]
//["🎃", "👻", "🧟‍♀️", "🧛🏿‍♂️", "💀","👹"]
//["🎅🏻", "🤶🏾", "🎄", "🎁", "⛄️", "❄️", "🧦", "🧣", "🧤"]
//["🍔", "🌭", "🌮", "🌮", "🥙", "🍕", "🥗", "🍱", "🍜"]
//["🌸", "🦋", "🐅", "🐾", "🌴", "🐍", "🌿", "🐢", "🦁"]
//["⚽️", "🏀", "🏈", "⚾️", "🎾", "🏐", "🏒", "🏹", "🛹"]

    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        
        // add numberofpairsofcards x 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))

        }
        cards.shuffle()
    }
    
    
    struct Card: Identifiable {
        
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        //content and id never change once the cards are created
        let content: CardContent
        let id: Int
    }
    
}
