//
//  Themes.swift
//  Memorize
//
//  Created by Seth Petel on 2021-10-20.
//

import Foundation
import SwiftUI

let globalThemes: [Theme] = [

    Theme(
        name: "Sports",
        emojis: ["⚽️", "🏀", "🏈", "⚾️", "🎾", "🏐", "🏒", "🏹", "🛹"],
        color: .yellow,
        id: 0
    ),

    Theme(
        name: "Nature",
        emojis: ["🌸", "🦋", "🐅", "🐾", "🌴", "🐍", "🌿", "🐢", "🦁"],
        color: .green,
        id: 1
    ),


    Theme(
        name: "Food",
        emojis: ["🍔", "🌭", "🌮", "🌮", "🥙", "🍕", "🥗", "🍱", "🍜"],
        color: .orange,
        id: 2
    ),

    Theme(
        name: "Xmas",
        emojis: ["🎅🏻", "🤶🏾", "🎄", "🎁", "⛄️", "❄️", "🧦", "🧣", "🧤"],
        color: .red,
        id: 3
    ),
    Theme(
        name: "Halloween",
        emojis: ["🎃", "👻", "🧟‍♀️", "🧛🏿‍♂️", "💀","👹", "🕸", "🕷", "👺"],
        color: .black,
        id: 4
    ),

    Theme(
        name: "Vehicles",
        emojis: ["🚗","🚕","🚙","🚌","🚎","🏎","🚓","🚑","🚒"],
        color: .gray,
        id: 5
    )




]

struct Theme: Identifiable {
    var name : String
    var emojis: Array<String>
    var numOfPairs: Int?
    var color: Color
    var id: Int
}
