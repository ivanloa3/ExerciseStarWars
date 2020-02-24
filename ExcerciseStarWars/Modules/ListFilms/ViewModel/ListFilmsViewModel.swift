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
  var film = [Film]()
  
  func getNumberOfFilms() -> Int {
    return film.count
  }

  func getTitleFilm(at indexPath: IndexPath) -> String {
    return film[indexPath.row].title
  }
}
