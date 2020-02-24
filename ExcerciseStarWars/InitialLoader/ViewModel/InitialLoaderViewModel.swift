//
//  InitialLoaderViewModel.swift
//  ExcerciseStarWars
//
//  Created by Ivan Erwin Lopez Ansaldo on 2/23/20.
//  Copyright © 2020 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import Foundation
import PromiseKit

struct InitialLoaderViewModel: InitialLoaderInputProtocol {
  func fetchFilms() {
    ListFilmRepository.shared.getData(from: EndPoint.films)
      .done { result in
        print(result)
    } .catch { error in
      print(error.localizedDescription)
    }
  }
}
