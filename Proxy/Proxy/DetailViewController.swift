

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    
    let url = URL(string: "https://www.planetware.com/wpimages/2023/01/canada-toronto-tourist-attractions-city-skyline-from-boat.jpg")!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadImage()

    }
    
    func loadImage() {
        let imageService = LoadImageService()
        let proxy = Proxy(service: imageService)
        
        proxy.loadImage(url: url) { [weak self] (data, responce, error) in
            
            guard let self = self, let data = data, error == nil else { return }
            DispatchQueue.main.async {
                self.imageView.image = UIImage(data: data)
            }
        }
    }
    
    @IBAction func refreshButton(_ sender: Any) {
        cacheData = nil
        imageView.image = nil
        loadImage()
    }
}
