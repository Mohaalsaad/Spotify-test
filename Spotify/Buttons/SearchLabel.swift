//
//  SearchLabel.swift
//  Spotify
//
//  Created by mohammed alsaad on 21/05/2023.
//

import SwiftUI

struct SearchLabel: View {
  @State private var searchText = ""
    var body: some View {
      ZStack{
        Color.black
          .ignoresSafeArea(.all)
      }
      NavigationView {
                  Text("\(searchText)")
                      .searchable(text: $searchText, prompt: "Look for something")
                      .navigationTitle("Searching")
              }
    }
}

struct SearchLabel_Previews: PreviewProvider {
    static var previews: some View {
        SearchLabel()
    }
}
