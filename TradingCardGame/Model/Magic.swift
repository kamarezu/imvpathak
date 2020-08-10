//
//  Magic.swift
//  TradingCardGame
//
//  Created by Pursuit on 1/9/19.
//  Copyright © 2019 J. All rights reserved.
//

import Foundation

struct Magic: Codable {
    let cards : [magicInfo]
}

struct magicInfo: Codable {
    let foreignNames: [foreignInfo]
}

struct foreignInfo: Codable {
    let name: String
    let text: String
    let imageUrl: String
    let language: String
}
