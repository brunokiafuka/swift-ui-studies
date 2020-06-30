//
//  MemoryGame.swift
//  Memorize
//
//  Created by Bruno@BridgeLabs on 2020/06/30.
//  Copyright © 2020 Kiafuka Dev. All rights reserved.
//  My Model

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    
    init(numberOfPairsOfCards: Int, cardContentContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIdx in 0 ..< numberOfPairsOfCards {
            let content = cardContentContentFactory(pairIdx)
            cards.append(Card(isFacedUp: false, isMatched: false, content: content, id: pairIdx * 2))
            cards.append(Card(isFacedUp: false, isMatched: false, content: content, id: pairIdx * 2 + 1))
        }
    }
    
    func choose(card: Card) {
        print("card choosen: \(card)")
    }
    
    struct Card: Identifiable {
        var isFacedUp: Bool
        var isMatched: Bool
        var content: CardContent // generic type
        var id: Int
    }
    
}
