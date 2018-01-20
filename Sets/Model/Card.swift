//
//  Card.swift
//  Sets
//
//  Created by Михаил Медведев on 20.01.2018.
//  Copyright © 2018 Михаил Медведев. All rights reserved.
//

import Foundation

//Задача игры - определить "Сет". В начале игры на столе лежат 12 карт. Каждая карта имеет четыре признака:
//1) Цвет: Каждая карта может быть красная, зеленая, или синяя.
//2) Символ: Каждая карта содержит овалы, волны, или ромбы.
//3) Количество: Каждая карта содержит один, два, или три символа.
//4) Заполнение: Каждая карта содержит символы закрашенные полностью, не закрашенные, или в полосочку.
//"Сет" состоит из трех карт, у которых, каждый из признаков или одинаков для всех карт или различается для всех карт.
//


struct Card {
    
    var color: cardColor
    
    enum cardColor {
        case red, green, blue
    }
    
    enum cardSymbol: String {
        case triangle = "▲"
        case oval = "●"
        case square = "■"
    }
    enum cardAmount {
        case one, two, three
    }
    
    enum cardFilling {
        case filled, notFilled, striped
    }
    
    
}






