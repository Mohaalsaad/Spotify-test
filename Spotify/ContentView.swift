//
//  ContentView.swift
//  Spotify
//
//  Created by mohammed alsaad on 19/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack {
        Color.black
          .ignoresSafeArea()
        VStack {
              HowToSignUpPage()
          }
        .padding()
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
