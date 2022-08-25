//
//  gameStrict.swift
//  4InLine
//
//  Created by Emmanuel Zambrano Quitian on 8/24/22.
//

import Foundation
struct gameStructu{
    
    var gameBoard:[[Int]] = [[0,0,0,0,0,0,0],
                       [0,0,0,0,0,0,0],
                       [0,0,0,0,0,0,0],
                       [0,0,0,0,0,0,0],
                       [0,0,0,0,0,0,0],
                         [0,0,0,0,0,0,0]]
    mutating func move(row:Int,player:Int){
        for i in (0...5).reversed(){
            if (gameBoard[i][row] == 0){
                gameBoard[i][row] = player
                break
            }
        }
        
    }
    mutating func resetGame(){
        gameBoard = [[0,0,0,0,0,0,0],
                     [0,0,0,0,0,0,0],
                     [0,0,0,0,0,0,0],
                     [0,0,0,0,0,0,0],
                     [0,0,0,0,0,0,0],
                     [0,0,0,0,0,0,0]]
    }
    func printGame(){
        print(gameBoard)
    }
    
    
}

