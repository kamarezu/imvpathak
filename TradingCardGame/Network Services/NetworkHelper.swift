//
//  NetworkHelper.swift
//  TradingCardGame
//
//  Created by Pursuit on 1/9/19.
//  Copyright © 2019 J. All rights reserved.
//

import Foundation

public final class NetworkHelper {
    private init() {
        let cache = URLCache(memoryCapacity: 10 * 1024 * 1024, diskCapacity: 10 * 1024 * 1024, diskPath: ni