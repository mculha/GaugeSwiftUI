//
//  SpeedometerSyle.swift
//  GaugeSwiftUI
//
//  Created by Melih Çulha on 15.02.2023.
//

import Foundation
import SwiftUI

struct SpeedometerStyle: GaugeStyle {
    
    private let gradient = LinearGradient(gradient: Gradient(colors: [Color(red: 233/255, green: 152/255, blue: 138/255), Color(red: 210/255, green: 4/255, blue: 94/255)]),
                                          startPoint: .trailing,
                                          endPoint: .leading)

    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            Circle()
                .foregroundColor(Color(.systemGray6))
            
            Circle()
                .trim(from: 0, to: 0.75 * configuration.value)
                .stroke(gradient, lineWidth: 20)
                .rotationEffect(.degrees(135))
            
            Circle()
                .trim(from: 0, to: 0.75)
                .stroke(Color.black, style: StrokeStyle(lineWidth: 10, lineCap: .butt, lineJoin: .round, dash: [1, 34], dashPhase: 0.0))
                .rotationEffect(.degrees(135))
            
            VStack {
                configuration.currentValueLabel
                    .font(.system(size: 80, weight: .bold, design: .rounded))
                    .foregroundColor(.gray)
                    
                Text("KM/H")
                    .font(.system(.body, design: .rounded))
                    .bold()
                    .foregroundColor(.gray)
                
            }
        }
        .frame(width: 300, height: 300)
        
    }
}

