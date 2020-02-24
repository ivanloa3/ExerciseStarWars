//
//  DetailFilmViewModel.swift
//  ExcerciseStarWars
//
//  Created by Ivan Erwin Lopez Ansaldo on 2/23/20.
//  Copyright © 2020 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import Foundation

struct DetailFilmViewModel: DetailFilmProtocol {
  var coordinator: MainCoordinator?
  var film: Film?

  func getTitle() -> String {
    return film?.title ?? ""
  }

  func getDescription() -> String {
    return film?.opening_crawl ?? ""
  }

  func getDirector() -> String {
    return film?.director ?? ""
  }
}
