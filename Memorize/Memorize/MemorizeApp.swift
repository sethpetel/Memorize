//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Seth Petel on 2021-09-20.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
