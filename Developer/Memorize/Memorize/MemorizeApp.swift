//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Rafael Steffens on 20/05/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    } 
}
