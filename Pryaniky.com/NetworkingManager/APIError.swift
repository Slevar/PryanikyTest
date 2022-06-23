//
//  APIError.swift
//  PryanikyProject
//
//  Created by Вардан Мукучян on 22.06.2022.
//

import Foundation

enum ApiError: Error {
    case forbidden              //Status code 403
    case notFound               //Status code 404
    case conflict               //Status code 409
    case internalServerError    //Status code 500
}
