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
    var initialLoaderViewModel = InitialLoaderViewModel()
    initialLoaderViewModel.coordinator = self
    initialLoaderViewController.viewModel = initialLoaderViewModel
    navigationController.pushViewController(initialLoaderViewController, animated: false)
  }

  func displayListFilms(with list: ListFilms) {
    let listFilmsViewController = ListFilmsViewController.instantiate()
    var listFilmsViewModel = ListFilmsViewModel()
    listFilmsViewModel.coordinator = self
    listFilmsViewModel.film = list.results
    listFilmsViewController.viewModel = listFilmsViewModel
    navigationController.pushViewController(listFilmsViewController, animated: true)
  }
}
