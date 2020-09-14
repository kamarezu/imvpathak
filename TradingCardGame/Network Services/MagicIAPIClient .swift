//
//  MagicIAPIClient .swift
//  TradingCardGame
//
//  Created by Pursuit on 1/9/19.
//  Copyright © 2019 J. All rights reserved.
//

import Foundation

final class magicAPIClient {
    static func MagicInfo(completionHandler: @escaping(AppError?,[magicInfo]?)-> Void) {
        NetworkHelper.shared.performDataTask(endpointURLString: "https://api.magicthegathering.io/v1/cards?contains=imageUrl", httpMethod: "GET", httpBody: nil) { (appError, data, httpResponse) in
            if let appError = appError {
                completionHandler(appEr