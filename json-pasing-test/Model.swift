//
//  Model.swift
//  json-pasing-test
//
//  Created by Vahtee Boo on 07.10.2021.
//

import Foundation

// MARK: - Currencies
struct Currencies: Codable {
    let data: [Datum]
}

// MARK: - Datum
struct Datum: Codable {
    let name: String
    let quote: Quote
    let symbol: String
}

// MARK: - Quote
struct Quote: Codable {
    let usd: Usd

    private enum CodingKeys: String, CodingKey {
        case usd = "USD"
    }
}

// MARK: - Usd
struct Usd: Codable {
    let price, marketCap: Double

    private enum CodingKeys: String, CodingKey {
        case price
        case marketCap = "market_cap"
    }
}

struct AllCurrencies {
    let name: String
    let symbol: String
    let price: Double
    let marketCap: Double
}

//
//struct Currencies: Codable {
//    let data: [Datum]
//}
//
//struct Datum: Codable {
//    let symbol: String
//    let name: String
//    let quote: Quote
//}
//
//struct Quote: Codable {
//    let USD: Usd
//}
//
//struct Usd: Codable {
//    let price: Double
//}

//struct AllCurrencies: Codable {
//    let symbol: String
//    let name: String
////    let price: Double
//
//    private enum AllCurrenciesKeys: String, Codable {
//        case quote
//    }
//
//    private enum MainKeys: String, Codable {
//        case symbol
//        case name
//    }
    
//    init(from decoder: Decoder) throws {
//        <#code#>
//    }
//

