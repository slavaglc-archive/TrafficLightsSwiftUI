//
//  SwiftUIView.swift
//  TrafficLights
//
//  Created by slava on 07.09.2021.
//

import SwiftUI

struct NextButton: View {
    let text: String
    let completion: ()->()
    
    var body: some View {

        Button(text) {
            completion()
        }.foregroundColor(.white)
        .frame(width: 100, height: 50, alignment: .center)
        .background(RoundedRectangle(cornerRadius: 25).foregroundColor(.blue))
        .overlay(RoundedRectangle(cornerRadius: 25)
        .stroke(Color.white, lineWidth: 4)
        )
            
            
            
            
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        NextButton(text: "START", completion: {} )
    }
}
