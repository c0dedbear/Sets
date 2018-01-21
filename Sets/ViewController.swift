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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    //MARK: обновляем view
    func updateView() {
        
        for button in cardsButtons {
            button.layer.cornerRadius = 8
        }
        
    }
    
    
    @IBAction func touchCard(_ sender: UIButton) {
        print ("Its connected!")
    }
    
    @IBAction func deal3MoreCards(_ sender: UIButton) {
    }
    
    @IBAction func findSetButtonPressed(_ sender: UIButton) {
    }
    @IBAction func newGameButtonPressed(_ sender: UIButton) {
    }
}

