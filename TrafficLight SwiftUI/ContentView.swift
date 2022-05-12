//
//  ContentView.swift
//  TrafficLight SwiftUI
//
//  Created by Тимур on 12.05.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var textButton = "START"
    
    @State private var redLight = 0.5
    @State private var yellowLight = 0.5
    @State private var greenLight = 0.5
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                SwiftLightView(color: .red.opacity(redLight))
                    .padding()
                SwiftLightView(color: .yellow.opacity(yellowLight))
                    .padding(.bottom)
                SwiftLightView(color: .green.opacity(greenLight))
                Spacer()
                
                Button(action: switchLight) {
                    Text(textButton)
                }
                .foregroundColor(.white)
                .frame(width: 150, height: 40)
                .overlay(RoundedRectangle(cornerRadius: 5) .stroke(Color.white, lineWidth: 5))
                .background(Color.blue)
                .cornerRadius(5)
                .padding(.bottom)
                .font(.title)
            }
        }
    }
    
    @State private var currentLight = CurrentLight.red
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.5
    
    private func switchLight() {
        
        if textButton == "START" {
            textButton = "NEXT"
        }
        
        switch currentLight {
        case .red:
            greenLight = lightIsOff
            redLight = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight = lightIsOff
            yellowLight = lightIsOn
            currentLight = .green
        case .green:
            yellowLight = lightIsOff
            greenLight = lightIsOn
            currentLight = .red
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
