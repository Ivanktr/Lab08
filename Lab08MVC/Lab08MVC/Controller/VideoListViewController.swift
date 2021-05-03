import UIKit

class VideoListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var videos: [Video] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()

    }
    
    func createArray() -> [Video] {
        var tempVideos: [Video] = []
        
        let video1 = Video(image: UIImage(named: "juego1")!, title: "Devil May Cry")
        let video2 = Video(image: UIImage(named: "juego2")!, title: "CyberPunk")
        let video3 = Video(image: UIImage(named: "juego3")!, title: "Genshin Impact")
        let video4 = Video(image: UIImage(named: "juego4")!, title: "Among Us")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        
        return tempVideos
    }

}

extension VideoListViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoViewCell
        
        cell.setVideo(video: video)
        
        return cell
    }
}
