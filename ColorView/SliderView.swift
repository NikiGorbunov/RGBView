//
//  SliderView.swift
//  ColorView
//
//  Created by Никита Горбунов on 15.04.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var sliderValue: Double
    @State private var textValue = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))")
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: sliderValue) { isOnFocus in
                textValue = "\(lround(isOnFocus))"
            }
            ColorValueTFView(textValue: $textValue, value: $sliderValue)
        }
        .onAppear {
            textValue = "\(lround(sliderValue))"
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            SliderView(sliderValue: .constant(50), color: .blue)
        }
    }
}
