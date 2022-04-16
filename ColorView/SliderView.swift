//
//  SliderView.swift
//  ColorView
//
//  Created by Никита Горбунов on 15.04.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var sliderValue: Double
    
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))")
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(color)
        }
        .padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderValue: .constant(1), color: .blue)
    }
}
