//
//  ViewController.swift
//  chalenge-day-23
//
//  Created by Pamela Ianovalli on 28/03/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgNationalFlag: UIImageView!
    
    var image: UIImage?
    var imageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgNationalFlag.image = image
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        title = imageName
    }
    
    @objc func shareTapped(){
        guard let image = image?.jpegData(compressionQuality: 0.8) else {
            return
        }
        
        let vc = UIActivityViewController(activityItems: [image, imageName], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }
}

