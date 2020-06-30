//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Bruno@BridgeLabs on 2020/06/30.
//  Copyright © 2020 Kiafuka Dev. All rights reserved.
//  My ViewModel

import SwiftUI


class EmojiMemoryGame {
    // private(set): only emoji game cam modify but others can view (glass door)

    private var memoryGame: MemoryGame<String> = createMemoryGame()
        
    static func createMemoryGame() ->  MemoryGame<String> {
        let emojis: Array<String> = ["🤪", "👻", "🚀"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIdx in return emojis[pairIdx] }
    }
    
    // MARK: - Access to the model
    var cards: Array<MemoryGame<String>.Card> {
        memoryGame.cards
    }
    
    
    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        memoryGame.choose(card: card)
    }
    
}
