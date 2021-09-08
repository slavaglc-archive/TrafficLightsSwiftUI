//
//  ContentView.swift
//  TrafficLights
//
//  Created by slava on 06.09.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var redLight = 0.5
    @State private var yellowLight = 0.5
    @State private var greenLight = 0.5
    
    var body: some View {
        ZStack{
            Color.black
            VStack {
                ColorCircle(brightness: redLight, color: .red)
                ColorCircle(brightness: yellowLight , color: .yellow)
                ColorCircle(brightness: greenLight, color: .green)
                Spacer()
                NextButton {
                    if redLight == 0.5 && yellowLight == 0.5 {
                        redLight = 1.0
                        greenLight = 0.5
                    } else if redLight == 1.0 {
                        yellowLight = 1.0
                        redLight = 0.5
                    } else if yellowLight == 1 {
                        greenLight = 1
                        yellowLight = 0.5
                    }
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
