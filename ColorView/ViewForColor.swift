//
//  ViewForColor.swift
//  ColorView
//
//  Created by Никита Горбунов on 14.04.2022.
//

import SwiftUI

struct ViewForColor: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(Color.init(
                red: red / 255,
                green: green / 255,
                blue: blue / 255)
            )
            .frame(width: 350, height: 200)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 5)
            )
            .shadow(color: Color.black.opacity(5), radius: 5)
    }
}

struct ViewForColor_Previews: PreviewProvider {
    static var previews: some View {
        ViewForColor(red: 200, green: 250, blue: 25)
    }
}
