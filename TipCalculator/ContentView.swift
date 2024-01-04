//
//  ContentView.swift
//  TipCalculator
//
//  Created by Carlos Henrique on 03/01/24.
//

import SwiftUI

struct ContentView: View {
    @State var total: String = ""
    @State var tipPercent: Double = 15.0
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "dollarsign.circle.fill")
                    .imageScale(.large)
                .foregroundStyle(.tint)
                Text("Tip Calculator")
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .fontWeight(.bold)
            HStack {
                Text("$")
                TextField("Amount", text: $total)
            }
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent)) %")
            }
            if let totalNum = Double(total) {
                Text("Tip Amount: $\(totalNum * tipPercent * 0.01, specifier: "%0.2f")")
            } else {
                Text("Please add a numeric value")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
