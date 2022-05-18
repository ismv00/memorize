//
//  EmojyMemoryGame.swift
//  Memorize
//
//  Created by Igor S. Menezes on 18/05/22.
//

import SwiftUI



class EmojyMemoryGame {
    static let emojis = ["🛵",  "🛫",  "🛺", "🚛" , "😇", "🥰", "🤓", "😘", "😡", "😤", "🤬", "👻", "🫥", "🎃", "👾"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
             emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
        
    
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
}
