//
//  EmojyMemoryGame.swift
//  Memorize
//
//  Created by Igor S. Menezes on 18/05/22.
//

import SwiftUI



class EmojyMemoryGame: ObservableObject {
    static let emojis = ["π΅",  "π«",  "πΊ", "π" , "π", "π₯°", "π€", "π", "π‘", "π€", "π€¬", "π»", "π«₯", "π", "πΎ", "β³", "πΏ", "π", "π±", "π΅", "βοΈ", "π§°", "βΎοΈ", "β½οΈ"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 17) { pairIndex in
             emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
        
    
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        
        model.choose(card)
    }
    
}
