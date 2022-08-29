//
//  gameStrict.swift
//  4InLine
//
//  Created by Emmanuel Zambrano Quitian on 8/24/22.
//

import Foundation
struct gameStructu{
    
    var gameBoard:[[gamePce]] = [[gamePce(),gamePce(),gamePce(),gamePce(),gamePce(),gamePce(),gamePce()],
                                 [gamePce(),gamePce(),gamePce(),gamePce(),gamePce(),gamePce(),gamePce()],
                                 [gamePce(),gamePce(),gamePce(),gamePce(),gamePce(),gamePce(),gamePce()],
                                 [gamePce(),gamePce(),gamePce(),gamePce(),gamePce(),gamePce(),gamePce()],
                                 [gamePce(),gamePce(),gamePce(),gamePce(),gamePce(),gamePce(),gamePce()],
                                 [gamePce(),gamePce(),gamePce(),gamePce(),gamePce(),gamePce(),gamePce()]]
    init(){
        for i in (0..<6){
            for j in (0..<7){
                gameBoard[i][j].name = "circle\(i)\(j)"
            }
        }
    }
    
    mutating func move(row:Int,player:Int){
        for i in (0...5).reversed(){
            if (gameBoard[i][row].valor == 0){
                gameBoard[i][row].name = "circle\(row)"
                gameBoard[i][row].valor = player
                
                break
            }
        }
        
    }
    mutating func resetGame(){
        /*
         ForEach(0..<6) {i in
             HStack( spacing: 3){
                 ForEach(0..<7) {j in
         */
        for i in (0..<6){
            for j in (0..<7){
                gameBoard[i][j].valor = 0
            }
        }
    }
    func printGame(){
        print(gameBoard)
    }
    
    
}
struct gamePce{
    var valor = 0
    var show = true
    var name = ""
}

