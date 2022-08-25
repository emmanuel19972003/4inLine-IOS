//
//  mainGame.swift
//  4InLine
//
//  Created by Emmanuel Zambrano Quitian on 8/24/22.
//

import SwiftUI

struct mainGame: View {
    @StateObject private var vm = mainGameMVVM()
    var body: some View {
        VStack(spacing: 0){
            HStack{
                ForEach(0..<7) {j in
                    Circle().foregroundColor(.gray).onTapGesture {
                        vm.newGame.move(row: j, player: vm.player ? 1:2)
                        vm.player.toggle()
                    }
                }
            }
            Borad(tokens: vm.newGame.gameBoard).padding()
            Spacer()
        }
        
        
    }
    
}

struct mainGame_Previews: PreviewProvider {
    static var previews: some View {
        mainGame()
    }
}

struct Borad: View {
    var tokens: [[Int]]
    var tokenColor:Color = .gray
    var body: some View {
        VStack(spacing: 0){
            ForEach(0..<6) {i in
                HStack( spacing: 3){
                    ForEach(0..<7) {j in
                        if(tokens[i][j] == 0){
                            Circle().foregroundColor(.gray)
                        }else if (tokens[i][j] == 1){
                            Circle().foregroundColor(.red)
                        }else{
                            Circle().foregroundColor(.yellow)
                        }
                        
                    }
                }
            }

        }
    }
}
