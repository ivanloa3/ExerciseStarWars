//
//  Repository.swift
//  ExcerciseStarWars
//
//  Created by Ivan Erwin Lopez Ansaldo on 2/23/20.
//  Copyright © 2020 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import PromiseKit

class Repository<T>: Network where T: Decodable {
  
  var repositoryData: T?

  func getData(from url: String) -> Promise<T> {
    let (promise, resolver) = Promise<T>.pending()
    if let repositoryData = repositoryData {
      resolver.fulfill(repositoryData)
    } else {
      firstly {
        fetchData(url: url, decode: T.self)
      }.done{ [weak self] response in
        self?.repositoryData = response
        resolver.fulfill(response)
      }.catch { error  in
        resolver.reject(error)
      }
    }
    return promise
  }
}
