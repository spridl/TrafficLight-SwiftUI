//
//  SwiftLightView.swift
//  TrafficLight SwiftUI
//
//  Created by Тимур on 12.05.2022.
//

import SwiftUI

struct SwiftLightView: View {
    
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: UIScreen.main.bounds.width / 4, height: UIScreen.main.bounds.width / 4)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct SwiftLightView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftLightView(color: .red)
    }
}
