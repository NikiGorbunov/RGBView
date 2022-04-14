//
//  SliderAndText.swift
//  ColorView
//
//  Created by Никита Горбунов on 14.04.2022.
//

import SwiftUI

struct SliderAndText: View {
    @State private var sliderValue = Double.random(in: 0...255)
    
    var body: some View {
        Slider(value: $sliderValue)
    }
}

struct SliderAndText_Previews: PreviewProvider {
    static var previews: some View {
        SliderAndText()
    }
}
