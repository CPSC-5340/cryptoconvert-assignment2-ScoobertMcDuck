//
//  ConvertModel.swift
//  Assignment2
//
//  Created by Charlotte Varnum on 3/24/24.
//

import Foundation

struct ConvertModel<SomeType>: Identifiable {
    let id = UUID()
    var isFront: Bool = true
    let cardContent: CurrencyItemModel
}

struct CurrencyItemModel {
    let currencyName : String
    let currencyCode: String
    let countryFlag: String
    let multiplier: Double
}

struct CryptoItemModel {
    let cryptoName : String
    let cryptoCode: String
    let multiplier: Double
}
