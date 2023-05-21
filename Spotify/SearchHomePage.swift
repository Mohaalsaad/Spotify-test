//
//  SearchHomePage.swift
//  Spotify
//
//  Created by mohammed alsaad on 20/05/2023.
//

import SwiftUI

struct SearchHomePage: View {
  @State private var searchText = ""
    var body: some View {
      ZStack{
        Color.black
          .ignoresSafeArea(.all)
        NavigationStack {
        VStack{
            Text("\(searchText)")
              .navigationTitle("finde new songs.")
           
            Button("Search"){
            }
                .frame(maxWidth: 140 , maxHeight: 20)
                .foregroundColor(.black)
                .bold()
                .padding()
                .background(Color.white)
                .clipShape(Capsule())
              .padding()

          }
          .searchable(text: $searchText, prompt: "Look for something")
        }
      }
    }
}

struct SearchHomePage_Previews: PreviewProvider {
    static var previews: some View {
        SearchHomePage()
    }
}
