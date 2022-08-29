//
//  mainGame.swift
//  4InLine
//
//  Created by Emmanuel Zambrano Quitian on 8/24/22.
//

import SwiftUI

struct mainGame: View {
    @StateObject private var vm = mainGameMVVM()
    @Namespace var board
    @State var ANimatiCircle:Bool = true
    var body: some View {
        VStack(spacing: 0){
            HStack{
                ForEach(0..<7) {j in
                    
                    Circle().foregroundColor(.gray).matchedGeometryEffect(id: "circle\(j)", in: board)
                        .onTapGesture {
                            withAnimation {
                                
                                vm.newGame.move(row: j, player: vm.player ? 1:2)
                                vm.player.toggle()
                            }
                        }
                    
                    
                }
            }
            Borad(tokens: vm.newGame.gameBoard, board: board, ANimatiCircle: $ANimatiCircle).padding()
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
    var tokens: [[gamePce]]
    var tokenColor:Color = .gray
    var board: Namespace.ID
    @Binding var ANimatiCircle:Bool
    var body: some View {
        VStack(spacing: 0){
            ForEach(0..<6) {i in
                HStack( spacing: 3){
                    ForEach(0..<7) {j in
                        ZStack{
                            if(tokens[i][j].valor == 0){
                                Circle().foregroundColor(.gray)
                            }else if (tokens[i][j].valor == 1){
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
}
