//
//  CardsGridCollectionViewController.swift
//  memory-pairs-game
//
//  Created by Pamela Ianovalli on 15/06/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit

class CardsGridCollectionViewController: UICollectionViewController {
    private let sectionInsets = UIEdgeInsets(
        top: 30.0,
        left: 30.0,
        bottom: 1.0,
        right: 30.0
    )
    var imagesRandom = [""]
    var images = ["alien1", "alien2", "nerd1", "nerd2", "OMG1", "OMG2",
                  "halo1", "halo2", "ghost1", "ghost2", "robot1", "robot2",
                  "clown1", "clown2","tongue1", "tongue2", "heart1", "heart2"]

    override func viewDidLoad() {
        super.viewDidLoad()
        imagesRandom = images.shuffled()
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CardCollectionViewCell
        let image = imagesRandom[indexPath.row]
        cell.btnCard.backgroundColor = .blue
        cell.imgCard.image = UIImage(named: image)
        cell.imgCard.isHidden = true
        return cell
    }
}

extension CardsGridCollectionViewController : UICollectionViewDelegateFlowLayout {

  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      sizeForItemAt indexPath: IndexPath) -> CGSize {

    let widthPerItem = view.frame.width / 4
    
    return CGSize(width: widthPerItem, height: widthPerItem)
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      insetForSectionAt section: Int) -> UIEdgeInsets {
    return sectionInsets
  }

  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 5
  }
}
