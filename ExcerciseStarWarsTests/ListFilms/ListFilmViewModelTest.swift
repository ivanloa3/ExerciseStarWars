//
//  ListFilmViewModelTest.swift
//  ExcerciseStarWarsTests
//
//  Created by Ivan Erwin Lopez Ansaldo on 2/23/20.
//  Copyright © 2020 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import XCTest
@testable import ExcerciseStarWars

class ListFilmViewModelTest: XCTestCase {

  var sut: ListFilmViewModelMock?
  override func setUp() {
      sut = ListFilmViewModelMock()
  }

  override func tearDown() {
      sut = nil
  }

  func testGetNumberOfFilmsCalled() {
    guard let sut = sut else { return }
    _ = sut.getNumberOfFilms()
    XCTAssertTrue(sut.getNumberOfFilmsWasCalled)
  }

  func testGetTitleFilmCalled() {
    guard let sut = sut else { return }
    _ = sut.getTitleFilm(at: IndexPath(row: 0, section: 0))
    XCTAssertTrue(sut.getTitleFilmWasCalled)
  }

  func testNavigateToDetailFilmCalled() {
    guard let sut = sut else { return }
    _ = sut.navigateToDetailFilm(at: IndexPath(row: 0, section: 0))
    XCTAssertTrue(sut.navigateToDetailFilmWasCalled)
  }
}
