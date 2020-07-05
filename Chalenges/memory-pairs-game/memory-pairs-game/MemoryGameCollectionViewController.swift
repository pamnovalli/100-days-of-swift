//
//  CardsGridCollectionViewController.swift
//  memory-pairs-game
//
//  Created by Pamela Ianovalli on 15/06/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit

class MemoryGameCollectionViewController: UICollectionViewController {
    private var cards = [Card]()
    private let presenter = MemoryGamePresenter()
    
    private let sectionInsets = UIEdgeInsets(
        top: 30.0,
        left: 30.0,
        bottom: 1.0,
        right: 30.0
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.delegate = self
        presenter.viewDidLoad()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cards.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CardCell
        
        guard let cardCell = cell else { return UICollectionViewCell() }
        
        cardCell.load(card: presenter.cardAtIndex(indexPath.item))
        
        return cardCell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        presenter.didSelectCard(index: indexPath.item)
        
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}

extension MemoryGameCollectionViewController: MemoryGameProtocol {
    func setCards(_ cards: [Card]) {
        self.cards = cards
    }
    
    func updateGame() {
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
    }
    
    func showCard(_ index: Int, show: Bool) {
        let cell = collectionView.cellForItem(at: IndexPath(item: index, section: 0))
        
        (cell as? CardCell)?.showCard(show)
    }
}

extension MemoryGameCollectionViewController: UICollectionViewDelegateFlowLayout {
    
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
