//
//  VideoCell.swift
//  CustomCellsDemo
//
//  Created by Daniel Covelli on 10/15/20.
//

import UIKit

class VideoCell: UITableViewCell {
    
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(video: Video) {
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
}
