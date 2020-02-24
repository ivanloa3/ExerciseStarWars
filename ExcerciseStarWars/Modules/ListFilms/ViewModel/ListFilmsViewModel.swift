//
//  ListFilmsViewModel.swift
//  ExcerciseStarWars
//
//  Created by Ivan Erwin Lopez Ansaldo on 2/23/20.
//  Copyright © 2020 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import Foundation

struct ListFilmsViewModel: ListFilmsProtocol {
  var coordinator: MainCoordinator?
  var listFilms = [Film]()
  
  func getNumberOfFilms() -> Int {
    return listFilms.count
  }

  func getTitleFilm(at indexPath: IndexPath) -> String {
    return listFilms[indexPath.row].title
  }

  func navigateToDetailFilm(at indexPath: IndexPath) {
    coordinator?.displayDetailFilm(with: listFilms[indexPath.row])
  }
}
