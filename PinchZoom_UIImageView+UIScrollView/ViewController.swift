//
//  ViewController.swift
//  PinchZoom_UIImageView+UIScrollView
//
//  Created by 김우성 on 2021/09/28.
//

import UIKit

class ViewController: UIViewController {

    var imageScrollView: ImageScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageScrollView = ImageScrollView(frame: view.bounds)
        view.addSubview(imageScrollView)
        setUpImageScrollView()
        
        let imagePath = Bundle.main.path(forResource: "crab", ofType: "jpg")!
        let image = UIImage(contentsOfFile: imagePath)!
        self.imageScrollView.set(image: image)
    }
    
    func setUpImageScrollView() {
        imageScrollView.translatesAutoresizingMaskIntoConstraints = false
        imageScrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        imageScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        imageScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    }


}

