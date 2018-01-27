//
//  ViewController.swift
//  Sets
//
//  Created by Михаил Медведев on 20.01.2018.
//  Copyright © 2018 Михаил Медведев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var deal3MoreCardsLabel: UIButton!
    @IBOutlet weak var findSetButtonLabel: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var cardCountLabel: UILabel!
    @IBOutlet weak var matchedSetsLabel: UILabel!
    
    
    @IBOutlet var cardsButtons: [UIButton]!
    
   
    lazy var game = Sets(numberOfCardsInDeal: numberOfCardsInDeal, numberOfCardsInGame: numberOfCardsInGame) //начало игры с количеством 69 карт в колоде и 12 картами в игре
    
    
    var numberOfCardsInDeal: Int {
        
        get {
            let numberOfCardsInStart = 81
            return numberOfCardsInStart
        }
        
        set {
            
        }
        
    }
    var numberOfCardsInGame: Int {
        //геттер определяет количество карт по количеству отображаемых (notHiddenButtons) кнопок на экране)
        get {
            var notHiddenButtons = [UIButton]()
            for button in cardsButtons {
                if !button.isHidden {
                    notHiddenButtons.append(button)
                }
            }
            return notHiddenButtons.count
        }
        
        set {
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
          updateViewSettings()
        print("количество кнопок  \(cardsButtons.count)")
        print("количество карт в игре \(game.cardsInGame.count)")
        print("количество карт в колоде \(game.deal.count)")
    }
    
    //MARK: обновляем view
    func updateViewSettings() {
        for button in cardsButtons {
            button.layer.cornerRadius = 8
        }
        
    }
    
    //MARK: ОБНОВЛЕНИЕ view из модели
    func updateViewFromModel() {
        
        cardCountLabel.text = "Осталось карт: \(game.deal.count)" // обновление количества карт на экране в cardCountLabel
        
        if game.cardsInGame.count <= cardsButtons.count - 3 {
            deal3MoreCardsLabel.isUserInteractionEnabled = true
            deal3MoreCardsLabel.layer.opacity = 1
        } else {
            deal3MoreCardsLabel.isUserInteractionEnabled = false
            deal3MoreCardsLabel.layer.opacity = 0.5
        }
    }
    
    
    //MARK: buttons Actions
    @IBAction func touchCard(_ sender: UIButton) {

        
    }
    
    @IBAction func deal3MoreCardsPressed(_ sender: UIButton) {
        
        //удаление карты из колоды и добавление удаляемой карты в игру
        if game.cardsInGame.count <= cardsButtons.count - 3 { //проверка на максимальное количество карт, которые могут находится на экране одновременно
        game.dealMoreCards()
           updateViewFromModel()
        } else {
            //отключаем кнопку "сдать еще три карты"
            updateViewFromModel()
        }
        updateViewFromModel()
        print("количество карт в игре \(game.cardsInGame.count)")
        print("количество карт в колоде \(game.deal.count)")
        
    }
    
    @IBAction func findSetButtonPressed(_ sender: UIButton) {
    }
    @IBAction func newGameButtonPressed(_ sender: UIButton) {
        game = Sets(numberOfCardsInDeal: numberOfCardsInDeal, numberOfCardsInGame: numberOfCardsInGame)
        updateViewFromModel()
        print("количество карт в игре \(game.cardsInGame.count)")
        print("количество карт в колоде \(game.deal.count)")
    }
}

