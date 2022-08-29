//
//  ContentView.swift
//  4InLine
//
//  Created by Emmanuel Zambrano Quitian on 8/24/22.
//

import SwiftUI

struct ContentView: View {
    @State var isclick:Bool = true
    @State var cont:Bool = true
    @State var name1:String = "cuadrado"
    @State var name2:String = "circulo"
    @Namespace var activit1
    var body: some View {
        VStack{
            
            HStack {
                Circle().frame(width: 50, height: 50)
                    .foregroundColor(cont ? .blue : .red)
                    .onTapGesture {
                        cont.toggle()
                        if (cont){
                            name1 = "cuadrado"
                            name2 = "circulo"
                        }else{
                            name1 = "circulo"
                            name2 = "cuadrado"
                        }
                    }
                Circle().frame(width: 50, height: 50)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            isclick.toggle()
                        }
                    }
                
                
            }
            HStack{
                Rectangle().cornerRadius(10).frame(width: 100,height: 100).matchedGeometryEffect(id: "cuadrado2", in: activit1)
                Spacer()
                Rectangle().cornerRadius(10).frame(width: 100,height: 100).matchedGeometryEffect(id: "cuadrado2", in: activit1)
            }
            
            if (isclick){
                Rectangle()
                    .matchedGeometryEffect(id: "cuadrado", in: activit1)
                    .frame(width: 100,height: 100)
                Spacer()
                
            }else{
                Spacer()
                HStack{
                    Spacer()
                    Rectangle().frame(width: 100,height: 100).matchedGeometryEffect(id: name1, in: activit1)
                    Spacer()
                    Circle().frame(width: 100,height: 100).matchedGeometryEffect(id: name2, in: activit1)
                    Spacer()
                }
                
                
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
