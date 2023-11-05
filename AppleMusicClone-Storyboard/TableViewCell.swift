//
//  TableViewCell.swift
//  AppleMusicClone-Storyboard
//
//  Created by Shin Toyo on 2023/11/05.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var num: UILabel!
    @IBOutlet weak var songTitle: UILabel!
    func create(title: String, num: Int) {
        songTitle.text = title
        self.num.text = String(num)
    }
    //TableViewCellクラスがロードされた直後に実行
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    //タップにより選択された状態/通常の状態になった時に実行
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
