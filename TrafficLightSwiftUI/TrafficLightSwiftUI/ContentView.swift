//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Valya on 31.03.22.
//

import SwiftUI

struct ContentView: View {
    
    @State var trafficLightState: TrafficLightStates = .none
    
    var body: some View {
        VStack(spacing: 50) {
            TrafficLight(state: trafficLightState)
            
            Button(action: {
                self.trafficLightState.next()
            },
                   label: {
                Text("Change state")
            })
            .padding()
            .background(Color.blue)
            .foregroundColor(Color.white)
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
