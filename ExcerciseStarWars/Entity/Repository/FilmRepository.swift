//
//  FilmsRepository.swift
//  ExcerciseStarWars
//
//  Created by Ivan Erwin Lopez Ansaldo on 2/23/20.
//  Copyright © 2020 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import Foundation

class ListFilmRepository: Repository<ListFilms> {
  static let shared = ListFilmRepository()
  private override init() {}
}
