//
//  DetailFilmViewController.swift
//  ExcerciseStarWars
//
//  Created by Ivan Erwin Lopez Ansaldo on 2/23/20.
//  Copyright © 2020 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import UIKit

class DetailFilmViewController: UIViewController, Storyboarded {

  @IBOutlet weak var titleFilm: UILabel!
  @IBOutlet weak var directorFilm: UILabel!
  @IBOutlet weak var descriptionFilm: UITextView!
  var viewModel: DetailFilmProtocol?

  override func viewDidLoad() {
    super.viewDidLoad()
    navigationItem.largeTitleDisplayMode = .never
    configureVew()
  }
  private func configureVew() {
    titleFilm.text = viewModel?.getTitle()
    directorFilm.text = viewModel?.getDirector()
    descriptionFilm.text = viewModel?.getDescription()
  }
}
