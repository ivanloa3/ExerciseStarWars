//
//  Film.swift
//  ExcerciseStarWars
//
//  Created by Ivan Erwin Lopez Ansaldo on 2/23/20.
//  Copyright © 2020 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import Foundation

struct Film: Decodable {
  let episode_id: Int
  let title: String
  let opening_crawl: String
  let characters: [String]
}
