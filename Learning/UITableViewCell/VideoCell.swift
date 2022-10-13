//
//  VideoCell.swift
//  Learning
//
//  Created by Daniil Akmatov on 13/10/22.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet var videoImageView: UIImageView!
    @IBOutlet var videTitleLabel: UILabel!
    
    func setVideo(video: Video) {
        videoImageView.image = video.image
        videTitleLabel.text = video.title
    }
}
