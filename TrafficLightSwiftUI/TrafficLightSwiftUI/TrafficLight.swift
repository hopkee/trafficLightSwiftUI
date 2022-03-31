//
//  File.swift
//  TrafficLightSwiftUI
//
//  Created by Valya on 31.03.22.
//

import SwiftUI

enum TrafficLightStates: CaseIterable {
    
    case greenYellowSignals
    case greenSignal
    case yellowSignal
    case redSignal
    case none
    
    mutating func next() {
        let allCases = type(of: self).allCases
        self = allCases[(allCases.firstIndex(of: self)! + 1) % (allCases.count - 1)]
    }
    
}

struct TrafficLight: View {
    
    var state: TrafficLightStates
    
    init (state: TrafficLightStates) {
        self.state = state
    }
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 180, height: 500)
                .cornerRadius(20)
            VStack(spacing: 30) {
                Circle().frame(width: 120, height: 120)
                    .foregroundColor(.red)
                    .opacity(state == .redSignal ? 1.0 : 0.5)
                Circle().frame(width: 120, height: 120)
                    .foregroundColor(.yellow)
                    .opacity(state == .yellowSignal || state == .greenYellowSignals ? 1.0 : 0.5)
                Circle().frame(width: 120, height: 120)
                    .foregroundColor(.green)
                    .opacity(state == .greenSignal || state == .greenYellowSignals ? 1.0 : 0.5)
            }
        }
        
    }
    
}
