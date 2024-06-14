//
//  SliderViews.swift
//  Bullseye
//
//  Created by Andreas Langbein on 06.04.24.
//

import SwiftUI

struct SliderView: View {
  @Binding var sliderValue: Double
  
    var body: some View {
      Slider(value: $sliderValue, in: 1.0...100.0)
    }
}

struct SliderView_Previews: PreviewProvider {
  static var previews: some View {
    @State var exampleSliderValue: Double = 50.0
    SliderView(sliderValue: $exampleSliderValue)
  }
}
