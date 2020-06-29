//
//  ContentView.swift
//  Memorize
//
//  Created by Bruno@BridgeLabs on 2020/06/29.
//  Copyright © 2020 Kiafuka Dev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return HStack(content: {
            ForEach(0..<4) { index in
                CardView(isFaceUp: false)
            }
        })
        .padding()
        .font(Font.largeTitle)
        .foregroundColor(Color.orange)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View{
        ZStack() {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻")
            }else{
              RoundedRectangle(cornerRadius: 10.0).fill()
            }
           
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
