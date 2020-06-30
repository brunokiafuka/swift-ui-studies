//
//  ContentView.swift
//  Memorize
//
//  Created by Bruno@BridgeLabs on 2020/06/29.
//  Copyright © 2020 Kiafuka Dev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var emojiMemory: EmojiMemoryGame
    
    var body: some View {
        return HStack(content: {
            ForEach(emojiMemory.cards) { card in
                CardView(card: card).onTapGesture{
                    self.emojiMemory.choose(card: card)
                }
            }
        })
        .padding()
        .font(Font.largeTitle)
        .foregroundColor(Color.orange)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View{
        ZStack() {
            if !card.isFacedUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            }else{
              RoundedRectangle(cornerRadius: 10.0).fill()
            }
           
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(emojiMemory: EmojiMemoryGame())
    }
}
