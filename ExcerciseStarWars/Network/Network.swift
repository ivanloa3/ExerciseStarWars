//
//  Network.swift
//  ExcerciseStarWars
//
//  Created by Ivan Erwin Lopez Ansaldo on 2/23/20.
//  Copyright © 2020 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import Foundation
import PromiseKit

//enum APIError: Error {
//  case somethingHappened
//  var localizedDescription: String {
//    switch self {
//    case .somethingHappened: return "Algo salio mal"
//    }
//  }
//}

protocol Network {
  func fetchData<T: Decodable>(url: String, decode: T.Type) -> Promise<T>
}

extension Network {
  func fetchData<T: Decodable>(url: String, decode: T.Type) -> Promise<T> {
    let (promise, resolver) = Promise<T>.pending()
    firstly {
      Alamofire
        .request(url, method: .get)
        .responseDecodable(decode)
    }.done { response in
      resolver.fulfill(response)
    }.catch { error  in
      resolver.reject(error)
    }
    return promise
  }
}
