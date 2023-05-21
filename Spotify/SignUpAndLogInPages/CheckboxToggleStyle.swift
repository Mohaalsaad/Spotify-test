//
//  CheckboxToggleStyle.swift
//  Spotify
//
//  Created by mohammed alsaad on 19/05/2023.
//

import SwiftUI

struct CheckboxToggleStyle: ToggleStyle {
  @Environment(\.isEnabled) var isEnabled
  let style: Style

  func makeBody(configuration: Configuration) -> some View {
    Button(action: {
      configuration.isOn.toggle()
    }, label: {
      HStack {
        Image(systemName: configuration.isOn ? "checkmark.\(style.sfSymbolName).fill" : style.sfSymbolName)
          .imageScale(.large)
        configuration.label
      }
    })
    .buttonStyle(PlainButtonStyle())
    .disabled(!isEnabled)
  }

  enum Style {
    case square, circle

    var sfSymbolName: String {
      switch self {
      case .square:
        return "square"
      case .circle:
        return "circle"
      }
    }
  }
}
