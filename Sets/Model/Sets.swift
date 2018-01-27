//
//  SetGame.swift
//  Sets
//
//  Created by Михаил Медведев on 20.01.2018.
//  Copyright © 2018 Михаил Медведев. All rights reserved.
//

import Foundation

class Sets
{
    var deal = [Card]() // колода
    var cardsInGame = [Card]() // карты которые находятся в игре
    var selectedCards: [Card]? // выбранные карты
    var isMatched: Bool? //проверка являются ли выбранные карты сетом
    var isFoundSetInGame: Bool? // проверка есть ли вообще сет среди участвующих в игре картах
    
    
    // выбор карт
    func selectingCards(at index: Int) {
        //реализовать выбор карт
        if selectedCards == nil {
            
            
        }
        //"Сет" состоит из трех карт, у которых, каждый из признаков или одинаков для всех карт или различается для всех карт.
        
        
    }
    
    // добавить еще 3 карты
    func dealMoreCards(){
        if deal.count >= 4 {
            for card in deal.startIndex..<3 {
                let removedCard = deal.remove(at: card)
                cardsInGame += [removedCard]
            }
            
        } else {
            for card in deal{
                cardsInGame.append(card)
                deal.removeAll()
            }
        }
    }
    
    //добавляем карты в колоду, затем карты из колоды в количестве numberOfCardsInGame добавляются в игру
    init(numberOfCardsInDeal: Int, numberOfCardsInGame: Int) {
        let card = Card()
        for _ in 0..<numberOfCardsInDeal {
            deal += [card]
            
        }
        
        for cards in deal.startIndex..<numberOfCardsInGame {
            let removeFromDeal = deal.remove(at: cards)
            cardsInGame += [removeFromDeal]
        }
    }

    
}
