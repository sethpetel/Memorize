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
        emojis: ["โฝ๏ธ", "๐", "๐", "โพ๏ธ", "๐พ", "๐", "๐", "๐น", "๐น"],
        color: .yellow,
        id: 0
    ),

    Theme(
        name: "Nature",
        emojis: ["๐ธ", "๐ฆ", "๐", "๐พ", "๐ด", "๐", "๐ฟ", "๐ข", "๐ฆ"],
        color: .green,
        id: 1
    ),


    Theme(
        name: "Food",
        emojis: ["๐", "๐ญ", "๐ฎ", "๐ฎ", "๐ฅ", "๐", "๐ฅ", "๐ฑ", "๐"],
        color: .orange,
        id: 2
    ),

    Theme(
        name: "Xmas",
        emojis: ["๐๐ป", "๐คถ๐พ", "๐", "๐", "โ๏ธ", "โ๏ธ", "๐งฆ", "๐งฃ", "๐งค"],
        color: .red,
        id: 3
    ),
    Theme(
        name: "Halloween",
        emojis: ["๐", "๐ป", "๐งโโ๏ธ", "๐ง๐ฟโโ๏ธ", "๐","๐น", "๐ธ", "๐ท", "๐บ"],
        color: .black,
        id: 4
    ),

    Theme(
        name: "Vehicles",
        emojis: ["๐","๐","๐","๐","๐","๐","๐","๐","๐"],
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
