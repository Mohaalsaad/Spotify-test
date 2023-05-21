//
//  FaceBookButton.swift
//  Spotify
//
//  Created by mohammed alsaad on 19/05/2023.
//

import SwiftUI

struct FaceBookButton : View{
  var body: some View{
    HStack {
      Image("fb")
        .resizable()
        .frame(width: 30, height: 30)
        .padding()
      Button("Sign up with FaceBook"){

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
struct FaceBookButton_Previews: PreviewProvider {
    static var previews: some View {
        FaceBookButton()
    }
}
