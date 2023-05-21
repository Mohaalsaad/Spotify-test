//
//  AppleButton.swift
//  Spotify
//
//  Created by mohammed alsaad on 19/05/2023.
//

import SwiftUI

struct AppleButton : View{
  var body: some View{
    HStack {
      Image(systemName: "apple.logo")
        .resizable()
        .frame(width: 20, height: 25)
        .padding()
      Button("Sign up with Google"){

      }
      .padding()
    }
    .foregroundColor(.white)
    .frame(maxWidth: 290 , maxHeight: 20)
    .foregroundColor(.white)
    .padding()
    .background(Color.black)
    .clipShape(Capsule())
    .overlay(RoundedRectangle(cornerRadius: 50)
        .stroke(.gray , lineWidth: 1))


  }

}


struct AppleButton_Previews: PreviewProvider {
    static var previews: some View {
        AppleButton()
    }
}
