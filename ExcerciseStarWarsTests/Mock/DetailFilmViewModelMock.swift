//
//  DetailFilmViewModelMock.swift
//  ExcerciseStarWarsTests
//
//  Created by Ivan Erwin Lopez Ansaldo on 2/23/20.
//  Copyright © 2020 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import Foundation
@testable import ExcerciseStarWars

class DetailFilmViewModelMock: DetailFilmProtocol {
  var getTitleWasCalled = false
  var getDescriptionWasCalled = false
  var getDirectorWasCalled = false

  func getTitle() -> String {
    getTitleWasCalled = true
    return ""
  }

  func getDescription() -> String {
    getDescriptionWasCalled = true
    return ""
  }

  func getDirector() -> String {
    getDirectorWasCalled = true
    return ""
  }
}

