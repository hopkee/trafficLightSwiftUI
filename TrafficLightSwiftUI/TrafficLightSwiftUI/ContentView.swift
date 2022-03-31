//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Valya on 31.03.22.
//

import SwiftUI

struct ContentView: View {
    
    @State var trafficLightState: TrafficLightStates = .greenYellowSignals
    
    var body: some View {
        VStack(spacing: 50) {
            ZStack{
                Rectangle()
                    .fill(Color.black)
                    .frame(width: 180, height: 500)
                    .cornerRadius(20)
                TrafficLight(state: trafficLightState)

            }
            
            Button(action: {
                self.changeSignal()
            },
                   label: {
                Text("Change state")
            })
            .padding()
            .background(Color.indigo)
            .foregroundColor(Color.white)
        }
    }
    
    private func changeSignal() {
        if trafficLightState == .greenSignal {
            trafficLightState = .greenYellowSignals
        } else if trafficLightState == .greenYellowSignals {
            trafficLightState = .redSignal
        } else if trafficLightState == .redSignal {
            trafficLightState = .yellowSignal
        } else if trafficLightState == .yellowSignal {
            trafficLightState = .greenSignal
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
