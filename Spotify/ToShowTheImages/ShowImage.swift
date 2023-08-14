//
//  ShowImage.swift
//  Spotify
//
//  Created by mohammed alsaad on 19/05/2023.

import SwiftUI
struct SomeImage : View {
  var mex = ""
  var body: some View{
    VStack{
      Image(mex)
        .resizable()
        .frame(width: 150 , height: 150)

    }
  }
}
struct SomeImage2 : View {
  var mix = ""
  var body: some View{
    VStack{
      Image(mix)
        .resizable()
        .frame(width: 150 , height: 150)

    }
  }
}
struct SomeImage3 : View {
  var news = ""
  var body: some View{
    VStack{
      Image(news)
        .resizable()
        .frame(width: 150 , height: 150)

    }
  }
}
struct SomeImage4 : View {
  var fa = ""
  var body: some View{
    VStack{
      Image(fa)
        .resizable()
        .frame(width: 150 , height: 150)

    }
  }
}

struct ShowImage_Previews: PreviewProvider {
    static var previews: some View {
      SomeImage()
    }
}
