//
//  Model.swift
//  Pryaniky.com
//
//  Created by Вардан Мукучян on 23.06.2022.
//

import Foundation


// MARK: - MainDataModel
struct MainDataModel: Codable {
    let data: [Datum]
    let view: [String]
}

// MARK: - Datum
struct Datum: Codable, Identifiable {
    
    let id = UUID().uuidString
    let name: String
    let dataClass: DataClass
    
    enum CodingKeys: String, CodingKey {
        case name, id
        case dataClass = "data"
    }
}

// MARK: - DataClass
struct DataClass: Codable {
    let text: String?
    let url: String?
    let selectedID: Int?
    let variants: [Variant]?

    enum CodingKeys: String, CodingKey {
        case text, url
        case selectedID = "selectedId"
        case variants
    }
}

// MARK: - Variant
struct Variant: Codable, Identifiable {
    let id: Int
    let text: String
}
