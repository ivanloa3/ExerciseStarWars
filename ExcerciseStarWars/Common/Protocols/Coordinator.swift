//
//  Coordinator.swift
//  ExcerciseStarWars
//
//  Created by Ivan Erwin Lopez Ansaldo on 2/23/20.
//  Copyright © 2020 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import UIKit

protocol Coordinator {
  var children: [Coordinator] { get set }
  var navigationController: UINavigationController { get set }
  func start()
}
