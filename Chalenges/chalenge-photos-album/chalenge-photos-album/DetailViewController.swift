//
//  DetailViewController.swift
//  chalenge-photos-album
//
//  Created by Pamela Ianovalli on 26/04/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var photo: URL?
    
    @IBOutlet weak var imgDetailPhoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let image = photo else { return }
        imgDetailPhoto.image = UIImage(contentsOfFile: image.path)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
