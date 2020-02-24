//
//  InitialViewController.swift
//  ExcerciseStarWars
//
//  Created by Ivan Erwin Lopez Ansaldo on 2/23/20.
//  Copyright © 2020 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import UIKit

class InitialLoaderViewController: UIViewController, Storyboarded {
  weak var coordinator: MainCoordinator?
  var viewModel: InitialLoaderInputProtocol?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    viewModel?.fetchFilms()
  }
}

