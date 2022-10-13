//
//  VideoListScreen.swift
//  Learning
//
//  Created by Daniil Akmatov on 13/10/22.
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
        
        let video1 = Video(image: #imageLiteral(resourceName: "living-hope.png"), title: "Living Hope")
        let video2 = Video(image: #imageLiteral(resourceName: "shout-to-the-lord.png"), title: "Shout to the Lord")
        let video3 = Video(image: #imageLiteral(resourceName: "who-you-say-i-am.png"), title: "Who You say I am")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        
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
