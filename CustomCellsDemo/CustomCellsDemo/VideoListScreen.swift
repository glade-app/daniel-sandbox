//
//  VideoListScreen.swift
//  CustomCellsDemo
//
//  Created by Daniel Covelli on 10/15/20.
//

import UIKit

class VideoListScreen: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var videos: [Video] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray() -> [Video] {
        
        var tempVideos: [Video] = []
        
        let video1 = Video(image: #imageLiteral(resourceName: "haitus"), title: "Strait vibes my dude")
        let video2 = Video(image: #imageLiteral(resourceName: "mos"), title: "Fear not man")
        let video3 = Video(image: #imageLiteral(resourceName: "vw"), title: "Who gives a f**k")
        let video4 = Video(image: #imageLiteral(resourceName: "tame"), title: "Existential Angst")
        let video5 = Video(image: #imageLiteral(resourceName: "laroux"), title: "Remix")
        let video6 = Video(image: #imageLiteral(resourceName: "jai"), title: "Zion Wolf")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        tempVideos.append(video6)
        
        return tempVideos
    }
    
}

extension VideoListScreen: UITableViewDataSource, UITableViewDelegate {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let video = videos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        
        cell.setVideo(video: video)
        
        return cell
    }
}
