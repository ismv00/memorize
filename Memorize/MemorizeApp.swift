//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Igor S. Menezes on 16/05/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojyMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
