//
//  File.swift
//  TrafficLightSwiftUI
//
//  Created by Valya on 31.03.22.
//

import SwiftUI

enum TrafficLightStates {
    case greenSignal
    case yellowSignal
    case redSignal
    case greenYellowSignals
}

struct TrafficLight: View {
    
    var redColorOpacity: Double
    var yellowColorOpacity: Double
    var greenColorOpacity: Double
    
    init (state: TrafficLightStates) {
        switch state {
        case .greenSignal:
            self.redColorOpacity = 0.5
            self.yellowColorOpacity = 0.5
            self.greenColorOpacity = 1
        case .redSignal:
            self.redColorOpacity = 1
            self.yellowColorOpacity = 0.5
            self.greenColorOpacity = 0.5
        case .yellowSignal:
            self.redColorOpacity = 0.5
            self.yellowColorOpacity = 1
            self.greenColorOpacity = 0.5
        case .greenYellowSignals:
            self.redColorOpacity = 0.5
            self.yellowColorOpacity = 1
            self.greenColorOpacity = 1
        }
    }
    
    var body: some View {
        VStack(spacing: 30) {
            Circle().frame(width: 120, height: 120)
                .foregroundColor(.red)
                .opacity(self.redColorOpacity)
            Circle().frame(width: 120, height: 120)
                .foregroundColor(.yellow)
                .opacity(self.yellowColorOpacity)
            Circle().frame(width: 120, height: 120)
                .foregroundColor(.green)
                .opacity(self.greenColorOpacity)
        }
        
    }
    
//    var body: some View {
//        Circle().frame(width: 120, height: 120)
//            .foregroundColor(.green)
//    }
    
//    init(state: TrafficLightSignals) {
//        switch state {
//        case .greenSignal:
//            VStack(spacing: 30) {
//                Circle().frame(width: 120, height: 120)
//                    .foregroundColor(.red)
//                    .opacity(0.5)
//                Circle().frame(width: 120, height: 120)
//                    .foregroundColor(.yellow)
//                    .opacity(0.5)
//                Circle().frame(width: 120, height: 120)
//                    .foregroundColor(.green)
//            }
//
//        case .greenYellowSignals:
//            VStack(spacing: 30) {
//                Circle().frame(width: 120, height: 120)
//                    .foregroundColor(.red)
//                    .opacity(0.5)
//                Circle().frame(width: 120, height: 120)
//                    .foregroundColor(.yellow)
//                Circle().frame(width: 120, height: 120)
//                    .foregroundColor(.green)
//            }
//        case .redSignal:
//            VStack(spacing: 30) {
//                Circle().frame(width: 120, height: 120)
//                    .foregroundColor(.red)
//                Circle().frame(width: 120, height: 120)
//                    .foregroundColor(.yellow)
//                    .opacity(0.5)
//                Circle().frame(width: 120, height: 120)
//                    .foregroundColor(.green)
//                    .opacity(0.5)
//            }
//        case .yellowSignal:
//            VStack(spacing: 30) {
//                Circle().frame(width: 120, height: 120)
//                    .foregroundColor(.red)
//                    .opacity(0.5)
//                Circle().frame(width: 120, height: 120)
//                    .foregroundColor(.yellow)
//                Circle().frame(width: 120, height: 120)
//                    .foregroundColor(.green)
//                    .opacity(0.5)
//            }
//        }
//    }
}
