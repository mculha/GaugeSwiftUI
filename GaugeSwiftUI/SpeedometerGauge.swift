//
//  SpeedometerGauge.swift
//  GaugeSwiftUI
//
//  Created by Melih Çulha on 15.02.2023.
//

import SwiftUI

struct SpeedometerGauge: View {
    @State private var currentValue = 100.0
    private let range: ClosedRange<Double> = 0...200
    
    var body: some View {
        VStack(spacing: 40) {
            Slider(value: $currentValue, in: range)
            
            Gauge(value: currentValue, in: range) {
                Image(systemName: "gauge.medium")
                    .font(.system(size: 50.0))
            } currentValueLabel: {
                Text("\(Int(currentValue))")
            }
            .gaugeStyle(SpeedometerStyle())
        }
    }
}

struct SpeedometerGauge_Previews: PreviewProvider {
    static var previews: some View {
        SpeedometerGauge()
    }
}
