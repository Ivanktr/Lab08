//
//  VideoViewCell.swift
//  Lab08MVC
//
//  Created by mbtec22 on 5/02/21.
//

import UIKit

class VideoViewCell: UITableViewCell {

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(video: Video)  {
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }

}
