//
//  mainGameMVVM.swift
//  4InLine
//
//  Created by Emmanuel Zambrano Quitian on 8/24/22.
//

import Foundation
extension mainGame{
    //private(set), lo hace todo muy importante
    @MainActor class mainGameMVVM: ObservableObject{
        @Published var newGame = gameStructu()
        var player:Bool = true
        
        
        
    }
}
