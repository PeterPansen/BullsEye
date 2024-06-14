//
//  TextViews.swift
//  Bullseye
//
//  Created by Andreas Langbein on 06.04.24.
//

import SwiftUI

struct InstructionText: View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
      .bold()
      .multilineTextAlignment(.center)
      .lineSpacing(4.0)
      .font(.footnote)
      .kerning(2.0)
      .foregroundColor(Color("TextColor"))
  }
}

struct BigNumberText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .kerning(-1.0)
      .font(.largeTitle)
      .fontWeight(.black)
      .foregroundColor(Color("TextColor"))
  }
}

struct SliderLabelText: View {
  var text: String
  var body: some View {
    Text(text)
      .bold()
      .foregroundColor(Color("TextColor"))
  }
}

struct LabelText: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .kerning(1.5)
      .font(.caption)
      .bold()
      .foregroundColor(Color("TextColor"))
  }
}

struct BodyText: View {
  var text: String
  var body: some View {
    Text(text)
      .font(.subheadline)
      .fontWeight(.semibold)
      .multilineTextAlignment(.center)
      .lineSpacing(12)
  }
}

struct ButtonText: View {
  var text: String
  var body: some View {
    Text(text)
      .bold()
      .foregroundColor(Color.white)
      .padding()
      .frame(maxWidth: .infinity)
      .background(
        Color.accentColor
      )
      .cornerRadius(12)
  }
}

struct ScoreText: View {
  var score: Int
  var body: some View {
    Text(String(score))
      .bold()
      .font(.title3)
      .foregroundColor(Color("TextColor"))
      .kerning(-0.2)
  }
}

struct DateText: View {
  var date: Date
  var body: some View {
    Text(date, style: .time)
      .bold()
      .font(.title3)
      .foregroundColor(Color("TextColor"))
      .kerning(-0.2)
  }
}

struct BigBoldText: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .bold()
      .kerning(2.0)
      .foregroundColor(Color("TextColor"))
      .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
      .fontWeight(.black)
  }
}

struct TextViews_Previews: PreviewProvider {
  static var previews: some View{
    VStack {
      InstructionText(text: "🎯🎯🎯\nPut the Bullseye as close as you can to")
      BigNumberText(text: "Hello")
      SliderLabelText(text: "100")
      LabelText(text: "Score")
      BodyText(text:"You scored 200 points")
      ButtonText(text: "Start new Round")
      ScoreText(score: 100)
      DateText(date: Date())
      BigBoldText(text: "Leaderboard")
    }
    
    .padding()
  }
}
