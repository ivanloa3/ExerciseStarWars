//
//  MainCoordinator.swift
//  ExcerciseStarWars
//
//  Created by Ivan Erwin Lopez Ansaldo on 2/23/20.
//  Copyright © 2020 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
  var children = [Coordinator]()
  var navigationController: UINavigationController

  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }

  func start() {
    let initialLoaderViewController = InitialLoaderViewController.instantiate()
    initialLoaderViewController.coordinator = self
    initialLoaderViewController.viewModel = InitialLoaderViewModel()
    navigationController.pushViewController(initialLoaderViewController, animated: false)
  }
}
