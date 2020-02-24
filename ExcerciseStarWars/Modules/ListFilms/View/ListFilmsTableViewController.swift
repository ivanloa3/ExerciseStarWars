//
//  ListFilmsViewController.swift
//  ExcerciseStarWars
//
//  Created by Ivan Erwin Lopez Ansaldo on 2/23/20.
//  Copyright © 2020 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import UIKit

class ListFilmsViewController: UIViewController, Storyboarded {
  @IBOutlet weak var tableView: UITableView!
  var viewModel: ListFilmsViewModel?

  override func viewDidLoad() {
    super.viewDidLoad()
    configureNavBar()
  }

  private func configureNavBar() {
    navigationItem.setHidesBackButton(true, animated: true)
    navigationController?.navigationBar.prefersLargeTitles = true
    title = "Star Wars Films"
  }
}

extension ListFilmsViewController: UITableViewDataSource, UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModel?.getNumberOfFilms() ?? 0
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: Cell.filmCell.rawValue, for: indexPath)
    cell.textLabel?.text = viewModel?.getTitleFilm(at: indexPath)
    return cell
  }

  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
  }
}
