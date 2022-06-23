//
//  Constants.swift
//  PryanikyProject
//
//  Created by Вардан Мукучян on 22.06.2022.
//

import Foundation

struct Constants {
    
    //The API's base URL
    // "https://jsonplaceholder.typicode.com/posts"  "https://pryaniky.com/static/json/sample.json"
    static let baseUrl = "https://pryaniky.com/static/json/sample.json"
    
    //The parameters (Queries) that we're gonna use
    struct Parameters {
        static let userId = "userId"
    }
    
    //The header fields
    enum HttpHeaderField: String {
        case authentication = "Authorization"
        case contentType = "Content-Type"
        case acceptType = "Accept"
        case acceptEncoding = "Accept-Encoding"
    }
    
    //The content type (JSON)
    enum ContentType: String {
        case json = "application/json"
    }
}
