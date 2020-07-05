
import Foundation
import UIKit

protocol MemoryGameProtocol: AnyObject {
    func setCards(_ cards: [Card])
    func updateGame()
    func showCard(_ index: Int, show: Bool)
}

class MemoryGamePresenter {
    weak var delegate: MemoryGameProtocol?
    private var cards: [Card] = [Card]()
    private var cardsShown: [Card] = [Card]()
    
    private var images = ["alien", "nerd", "OMG", "halo",
                          "ghost", "robot", "clown","tongue", "heart"]
    
    
    func viewDidLoad() {
        createCards()
        delegate?.setCards(cards.shuffled())
        delegate?.updateGame()
    }
    
    func cardAtIndex(_ index: Int) -> Card {
        return cards[index]
    }
    
    func didSelectCard(index: Int) {
        let card = cards[index]
        
        delegate?.showCard(index, show: true)
        
        if isValidMatched() {
            if isCardsIquals(card) {
                cardsShown.append(card)
            } else {
                guard let lastIndex = indexForCard(cardsShown.last) else { return }
                cardsShown.removeLast()
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
                    self.delegate?.showCard(index, show: false)
                    self.delegate?.showCard(lastIndex, show: false)
                }
            }
            
        } else {
            cardsShown.append(card)
        }
    }
    
    private func createCards() {
        for image in images {
            let card = Card(image: UIImage(named: image) ?? UIImage())
            cards.append(card)
            cards.append(Card(card: card))
        }
    }
    
    private func isValidMatched() -> Bool {
        return !(cardsShown.count % 2 == 0) && !cardsShown.isEmpty
    }
    
    private func isCardsIquals(_ card: Card) -> Bool {
        guard let last = cardsShown.last else { return false}
        return card.image == last.image
    }
    
    private func indexForCard(_ card: Card?) -> Int? {
        guard let card = card else { return nil}
        for (index, _) in cards.enumerated() {
            if card.id == cards[index].id {
                return index
            }
        }
        
        return nil
    }
    
}
