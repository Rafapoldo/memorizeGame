//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Rafael Steffens on 24/05/21.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻","🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
//    RAFA: - Access to the model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
//    RAFA: - Intent(s)
    
    func choose (card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
    
    func resetGame(){
        model = EmojiMemoryGame.createMemoryGame()
    }
     
    
}
