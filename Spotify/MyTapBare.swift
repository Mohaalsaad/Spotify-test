//
//  MyTapBare.swift
//  Spotify
//
//  Created by mohammed alsaad on 20/05/2023.
//

import SwiftUI


struct MyTapBare: View {
    var body: some View {
      ZStack{
        Color.black
        .ignoresSafeArea(.all)
        TabView{
          HomePage()
            .tabItem {
              Image(systemName: "house")
            }
          SearchHomePage()
            .tabItem {
              Image(systemName: "magnifyingglass")
                .background(Color.green)
            }

          MusicPage()
            .tabItem {
              Image(systemName: "music.note")
            }

          SettingPage()
            .tabItem {
              Image(systemName: "gearshape")
            }

        }
      }
      .navigationBarBackButtonHidden(true)

    }
}

struct MyTapBare_Previews: PreviewProvider {
    static var previews: some View {
        MyTapBare()
    }
}
