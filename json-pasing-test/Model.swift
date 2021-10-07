//
//  Model.swift
//  json-pasing-test
//
//  Created by Vahtee Boo on 07.10.2021.
//

import Foundation

struct Currencies: Codable {
    let status: Status
    let data: [Datum]
}

struct Status: Codable {
    let timestamp: String
}

struct Datum: Codable {
    let name: String
    let quote: Quote
    let symbol: String
}

struct Quote: Codable {
    let USD: Usd
}

struct Usd: Codable {
    let price: Double
}

//struct Currencies: Codable {
//    let status: Status
//    let data: [Datum]
//}
//
//struct Status: Codable {
//    let timestamp: String
//}
//
//struct Datum: Codable {
//    let name: String
//    let quote: Quote
//    let symbol: String
//}
//
//struct Quote: Codable {
//    let USD: Usd
//}
//
//struct Usd: Codable {
//    let price: Double
//}
