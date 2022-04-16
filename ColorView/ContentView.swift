//
//  ContentView.swift
//  ColorView
//
//  Created by Никита Горбунов on 14.04.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redSlider = Double.random(in: 0...255)
    @State private var greenSlider = Double.random(in: 0...255)
    @State private var blueSlider = Double.random(in: 0...255)
    
//    @State private var redTFValue = ""
    
    var body: some View {
        ZStack() {
            Color(.gray)
                .ignoresSafeArea()
            VStack(spacing: 40) {
                ViewForColor(red: redSlider, green: greenSlider, blue: blueSlider)
                VStack {
                    SliderView(sliderValue: $redSlider, color: .red)
                    SliderView(sliderValue: $greenSlider, color: .green)
                    SliderView(sliderValue: $blueSlider, color: .blue)
//                    TextField("0", text: $redTFValue) { _ in
//                        redSlider = Double(redTFValue) ?? 0
//                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
