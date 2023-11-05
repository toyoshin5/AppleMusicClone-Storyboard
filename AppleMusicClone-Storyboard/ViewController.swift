//
//  ViewController.swift
//  AppleMusicClone-Storyboard
//
//  Created by Shin Toyo on 2023/11/04.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableViewHeightConstraint: NSLayoutConstraint!
    private var observation: NSKeyValueObservation?
    @IBOutlet weak var tableView: UITableView!
    let songs:[String] = [
      "Good Day", "Bouquet", "Aloha", "Sunrise Serenade", "Moonlit Melody",
      "Ocean Breeze", "Eternal Echoes", "Whispering Wind", "Mystic Mirage",
      "Golden Horizon", "Enchanted Evening", "Starlight Serenade",
      "Lullaby of the Stars", "Celestial Harmony", "Serenity's Embrace",
      "Dancing Fireflies", "Melody of the Mountains", "Hidden Oasis",
      "Radiant Reverie", "Midnight Mirage", "Journey to Infinity",
      "Crystal Cascade", "Soothing Symphony", "Echoes of Eternity",
      "Harmony Haven", "Serendipity Sonata", "Velvet Twilight",
      "Tranquil Tides", "Whimsical Waltz", "Chasing Dreams"
    ]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableViewCell
        cell.create(title: songs[indexPath.row], num: indexPath.row+1)
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //テーブルの高さを決定
        observation = tableView.observe(\.contentSize, options: [.new]) { [weak self] (_, _) in
            guard let self = self else { return }
            self.tableViewHeightConstraint?.constant = self.tableView.contentSize.height
        }
    }
    
    deinit {
        observation?.invalidate()
        observation = nil
    }

}

                                                
