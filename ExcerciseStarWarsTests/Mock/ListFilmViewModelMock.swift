//
//  ListFilmViewModelMock.swift
//  ExcerciseStarWarsTests
//
//  Created by Ivan Erwin Lopez Ansaldo on 2/23/20.
//  Copyright © 2020 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import Foundation
@testable import ExcerciseStarWars

class ListFilmViewModelMock: ListFilmsProtocol {
  var getNumberOfFilmsWasCalled = false
  var getTitleFilmWasCalled = false
  var navigateToDetailFilmWasCalled = false

  func getNumberOfFilms() -> Int {
    self.getNumberOfFilmsWasCalled = true
    return 0
  }

  func getTitleFilm(at indexPath: IndexPath) -> String {
    getTitleFilmWasCalled = true
    return ""
  }

  func navigateToDetailFilm(at index: IndexPath) {
    navigateToDetailFilmWasCalled = true
  }
}
