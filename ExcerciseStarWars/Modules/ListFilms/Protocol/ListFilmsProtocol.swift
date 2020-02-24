//
//  ListFilmsProtocol.swift
//  ExcerciseStarWars
//
//  Created by Ivan Erwin Lopez Ansaldo on 2/23/20.
//  Copyright © 2020 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import Foundation

protocol ListFilmsProtocol {
  func getNumberOfFilms() -> Int
  func getTitleFilm(at indexPath: IndexPath) -> String
}
