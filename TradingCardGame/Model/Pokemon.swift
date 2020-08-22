//
//  Pokemon.swift
//  TradingCardGame
//
//  Created by J on 1/9/19.
//  Copyright © 2019 J. All rights reserved.
//

import Foundation

struct Pokemons: Codable {
    let cards : [cardInfo]
}

struct cardInfo: Codable {
    let name: String
    let nationalPokedexNumber: Int
    let imageUrl: St