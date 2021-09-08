

import SwiftUI

struct ColorCircle: View {
    @State var brightness: Double
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 50, height: 50)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .opacity(brightness)
    }
    
}
