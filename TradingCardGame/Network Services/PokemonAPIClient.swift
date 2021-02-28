
//
//  PokemonAPIClient.swift
//  TradingCardGame
//
//  Created by J on 1/9/19.
//  Copyright © 2019 J. All rights reserved.
//

import Foundation

final class PokemonAPIClient {
    static func PokemonInfo(completionHandler: @escaping (AppError?,[cardInfo]?) -> Void) {
        NetworkHelper.shared.performDataTask(endpointURLString: "https://api.pokemontcg.io/v1/cards?contains=imageUrl,imageUrlHiRes,attacks", httpMethod: "GET", httpBody: nil) { (appError, data, httpResponse) in
            if let appError = appError {
                completionHandler(appError,nil)
            }
            guard let response = httpResponse,
                            (200...299).contains(response.statusCode) else {
                                let statusCode = httpResponse?.statusCode ?? -999
                                completionHandler(AppError.badStatusCode(String(statusCode)), nil)
                                return
                        }
            if let data = data {
                do {
                    let Pokedata = try JSONDecoder().decode(Pokemons.self, from: data)
                    completionHandler(nil,Pokedata.cards)
                } catch {
                    completionHandler(AppError.decodingError(error),nil)
                }
            }
        }
    }

}
    