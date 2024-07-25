//
//  ContentView.swift
//  DynamicallyColorSFSymbol
//
//  Created by daniel_bp on 6/28/24.
//

import SwiftUI

struct ContentView: View {
    @State private var value : Double = 0.0
    private let imageVaraibleColor = [
        "aqi.low",
        "wifi",
        "chart.bar.fill",
        "waveform",
        "rainbow",
        "square.stack.3d.up",
    ]
    // Image(systemName: "waveform", variableValue: value)
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20, content: {
                List{
                    ForEach(imageVaraibleColor, id: \.self) { image in
                        HStack{
                            Image(systemName: image, variableValue: value)
                        }
                        .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                        .listRowSeparator(.hidden)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    }
                }
                .listStyle(.plain)
                .listRowSpacing(16)
                
               
            })
            .font(.system(size: 60))
            
            Slider(value: $value, in: 0.0...1.0, step: 0.05)
                .tint(.black)
                .padding(.horizontal, 28)
            
            Text("\(value*100, specifier: "%.2f")")
                .fontWeight(.semibold)
                .fontWidth(.standard)
                .fontDesign(.monospaced)
                .foregroundStyle(.black)
             
            
            .navigationTitle("Images")
            
        }
        .foregroundStyle(.blue.opacity(0.8))
       
    }
}

#Preview {
    ContentView()
}
