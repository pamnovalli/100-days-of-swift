//
//  CardsGridCollectionViewController.swift
//  memory-pairs-game
//
//  Created by Pamela Ianovalli on 15/06/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit

class MemoryGameCollectionViewController: UICollectionViewController {
    private let sectionInsets = UIEdgeInsets(
        top: 30.0,
        left: 30.0,
        bottom: 1.0,
        right: 30.0
    )
    
    private var cards = [Card]()
    var cardsShown: [Card] = [Card] ()
    var isPlaying: Bool = false
    let game = MemoryGamePresenter()
    var counter = 0
    var time = Timer()
    
    
    private var images = ["alien", "nerd", "OMG", "halo", "ghost", "robot", "clown","tongue", "heart"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shuffleCards()
        createCards()
        collectionView.isHidden = false
    }
    
    func shuffleCards() {
        cards = cards.shuffled()
    }
    
    func createCards() {
        for image in images {
            let card = Card(image: UIImage(named: image) ?? UIImage())
            cards.append(card)
            cards.append(Card(card: card))
        }
    }
    
    func setupNewGame() {
        cards = game.newGame(cardsArray: self.cards)
        collectionView.reloadData()
    }
    
    func resetGame() {
        game.restartGame()
        setupNewGame()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cards.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CardCell
        let card = cards[indexPath.row]
        cell.card = card
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CardCell
        
        cell.showCard(true, animated: true)
        game.didSelectCard(cell.card)
        
        collectionView.deselectItem(at: indexPath, animated:true)
    }
}

extension MemoryGameCollectionViewController : UICollectionViewDelegateFlowLayout {
    
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

//extension CardsGridCollectionViewController: MemoryGameProtocol {
//
//    func memoryGameDidStart(_ game: MemoryGame) {
//        collectionView.reloadData()
//    }
//
//    func memoryGame(_ game: MemoryGame, showCards cards: [Card]) {
//        for card in cards {
//            guard let index = game.indexForCard(card) else { continue }
//            let cell = collectionView.cellForItem(at: IndexPath(item: index, section:0)) as! CardCell
//            cell.showCard(true, animated: true)
//        }
//    }
//
//    func memoryGame(_ game: MemoryGame, hideCards cards: [Card]) {
//        for card in cards {
//            guard let index = game.indexForCard(card) else { continue }
//            let cell = collectionView.cellForItem(at: IndexPath(item: index, section:0)) as! CardCell
//            cell.showCard(false, animated: true)
//        }
//    }
//
//    func memoryGameDidEnd(_ game: MemoryGame) {
//        time.invalidate()
//
//        //        let alertController = UIAlertController(
//        //            title: defaultAlertTitle,
//        //            message: defaultAlertMessage,
//        //            preferredStyle: .alert)
//        //
//        //        let cancelAction = UIAlertAction(title: "Nah", style: .cancel) { [weak self] (action) in
//        //            self?.collectionView.isHidden = true
//        //        }
//        //        let playAgainAction = UIAlertAction(title: "Dale!", style: .default) { [weak self] (action) in
//        //            self?.collectionView.isHidden = true
//        //            self?.resetGame()
//        //        }
//        //
//        //        alertController.addAction(cancelAction)
//        //        alertController.addAction(playAgainAction)
//        //
//        //        self.present(alertController, animated: true) { }
//        //
//        //        resetGame()
//    }
//}
