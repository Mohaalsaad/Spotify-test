//
//  PlayButton.swift
//  Spotify
//
//  Created by mohammed alsaad on 20/05/2023.
//

import SwiftUI

struct PlayButton: View {
  @State var play : String = "play"
  @State var size : CGFloat = 24
  @State var action: () -> Void
    var body: some View {
      VStack{
        Button {
          action()
        } label: {
          Image(systemName: play)
            .font(.system(size:size))
            .foregroundColor(.white )
        }

      }
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
      PlayButton(action: {})
    }
}
