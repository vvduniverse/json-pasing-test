//
//  Model.swift
//  json-pasing-test
//
//  Created by Vahtee Boo on 07.10.2021.
//

import Foundation

struct Currencies: Codable {
    let data: [Datum]
}

struct Datum: Codable {
    let symbol: String
    let name: String
    let quote: Quote
}

struct Quote: Codable {
    let USD: Usd
}

struct Usd: Codable {
    let price: Double
}
