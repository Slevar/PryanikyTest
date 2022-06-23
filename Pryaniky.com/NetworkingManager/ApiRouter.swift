//
//  ApiRouter.swift
//  Pryaniky.com
//
//  Created by Вардан Мукучян on 23.06.2022.
//

import Foundation
import Alamofire

struct APIMainRouter: URLRequestConvertible {
  let idNumber: Int
  
  init(idNumber: Int) {
    self.idNumber = idNumber
  }
  
  func asURLRequest() throws -> URLRequest {
      let url = try Constants.baseUrl.asURL()
      return URLRequest(url: url)
  }
}
