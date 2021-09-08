//
//  ContentView.swift
//  TrafficLights
//
//  Created by slava on 06.09.2021.
//

import SwiftUI

struct ContentView: View {
    private var redLight = ColorCircle(brightness: 0.5, color: .red)
    private let yellowLight = ColorCircle(brightness: 0.5, color: .yellow)
    private let greenLight = ColorCircle(brightness: 0.5, color: .green)
    
    var body: some View {
        ZStack{
            Color.black
            VStack {
                redLight
                yellowLight
                greenLight
                Spacer()
                NextButton {
                
                    
                    
                }
                
            }.padding()
        }.edgesIgnoringSafeArea(.all)
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
