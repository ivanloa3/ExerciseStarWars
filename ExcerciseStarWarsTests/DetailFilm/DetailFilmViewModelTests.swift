//
//  DetailFilmViewModelTests.swift
//  ExcerciseStarWarsTests
//
//  Created by Ivan Erwin Lopez Ansaldo on 2/23/20.
//  Copyright © 2020 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import XCTest
@testable import ExcerciseStarWars

class DetailFilmViewModelTests: XCTestCase {

  var sut: DetailFilmViewModelMock?
  override func setUp() {
      sut = DetailFilmViewModelMock()
  }

  override func tearDown() {
      sut = nil
  }

  func testGetTitleCalled() {
    guard let sut = sut else { return }
    _ = sut.getTitle()
    XCTAssertTrue(sut.getTitleWasCalled)
  }

  func testGetDescriptionCalled() {
    guard let sut = sut else { return }
    _ = sut.getDescription()
    XCTAssertTrue(sut.getDescriptionWasCalled)
  }

  func testGetDirectorCalled() {
    guard let sut = sut else { return }
    _ = sut.getDirector()
    XCTAssertTrue(sut.getDirectorWasCalled)
  }
}
