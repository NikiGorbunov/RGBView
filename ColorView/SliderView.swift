//
//  SliderView.swift
//  ColorView
//
//  Created by Никита Горбунов on 15.04.2022.
//

import SwiftUI

struct SliderView: View {
    @State var sliderValue: Double
    
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))")
            ColorSliderView(value: $sliderValue)
        }
        .padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderValue: .constant(100), color: .blue)
    }
}

struct ColorSliderView: View {
    @Binding var value: Double
    
    var body: some View {
        Slider(value: $value, in: 0...255, step: 1)
    }
}
