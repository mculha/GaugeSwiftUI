//
//  ContentView.swift
//  GaugeSwiftUI
//
//  Created by Melih Çulha on 14.02.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var currentValue = 50.0
    private let range: ClosedRange<Double> = 0...200
    
    var body: some View {
        VStack(spacing: 40) {
            Slider(value: $currentValue, in: range)
               
            Gauge(value: currentValue, in: range) {
                Label("Speed", systemImage: "speedometer")
                    .font(.system(size: 16))
            } currentValueLabel: {
                Text("\(Int(currentValue)) km/h")
            } minimumValueLabel: {
                Text(range.lowerBound.formatted(.number))
            } maximumValueLabel: {
                Text(range.upperBound.formatted(.number))
            }
            .tint(.red)
            .gaugeStyle(.linearCapacity) //Default value is .linearCapacity
            
            Gauge(value: currentValue, in: range) {
                Label("Speed", systemImage: "speedometer")
                    .font(.system(size: 16))
            } currentValueLabel: {
                Text("\(Int(currentValue)) km/h")
            }
            .tint(.green)
            .gaugeStyle(.accessoryCircular)
            
            Gauge(value: currentValue, in: range) {
                Label("Speed", systemImage: "speedometer")
                    .font(.system(size: 16))
            } currentValueLabel: {
                Text("\(Int(currentValue)) km/h")
            }
            .tint(.blue)
            .gaugeStyle(.accessoryCircularCapacity)
            
            Gauge(value: currentValue, in: range) {
                Label("Speed", systemImage: "speedometer")
                    .font(.system(size: 16))
            } currentValueLabel: {
                Text("\(Int(currentValue)) km/h")
            }
            .tint(.cyan)
            .gaugeStyle(.accessoryLinear)
            
            Gauge(value: currentValue, in: range) {
                Label("Speed", systemImage: "speedometer")
                    .font(.system(size: 16))
            } currentValueLabel: {
                Text("\(Int(currentValue)) km/h")
            }
            .tint(.indigo)
            .gaugeStyle(.accessoryLinearCapacity)
            

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
