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
  