//
//  ChooseArtistPage.swift
//  Spotify
//
//  Created by mohammed alsaad on 19/05/2023.
//

import SwiftUI

struct ChooseArtistPage: View {
  @State private var searchText = ""
  var body: some View {
    NavigationStack{
      ZStack {
        Color.black
          .ignoresSafeArea(.all)
        VStack{

          Text("\(searchText)")
            .foregroundColor(.white)
          ScrollView{
            HStack{
              VStack {
                Image("1")
                  .resizable()
                  .frame(width: 110 , height: 110)
                Text("Gunna")
              }
              VStack {
                Image("2")
                  .resizable()
                  .frame(width: 110 , height: 110)
                Text("Morgen Wallen")
              }
              VStack {
                Image("3")
                  .resizable()
                  .frame(width: 110 , height: 110)
                Text("Sheeran")
              }
            }
            HStack{
              VStack {
                Image("4")
                  .resizable()
                  .frame(width: 110 , height: 110)
                Text("Tame")
              }
              VStack {
                Image("5")
                  .resizable()
                  .frame(width: 110 , height: 110)
                Text("Lil Nas X")
              }
              VStack {
                Image("6")
                  .resizable()
                  .frame(width: 110 , height: 110)
                Text("Foo Fighters")
              }
            }
            HStack{
              VStack {
                Image("7")
                  .resizable()
                  .frame(width: 110 , height: 110)
                Text("Rage Against")
              }
              VStack {
                Image("8")
                  .resizable()
                  .frame(width: 110 , height: 110)
                Text("Incubus")
              }
              VStack {
                Image("9")
                  .resizable()
                  .frame(width: 110 , height: 110)
                Text("Audioslave")
              }
            }

          }
          NavigationLink("Next" , destination: NotificationPage())
            .frame(maxWidth: 100 , maxHeight: 20)
            .foregroundColor(.black)
            .padding()
            .background(Color.white)
            .clipShape(Capsule())
            .padding()

        }
        .foregroundColor(.white)
        .navigationTitle("Choose artist.")
        .navigationBarBackButtonHidden(true)
        .searchable(text: $searchText, prompt: "Look for something")
      }
    }
    }
}
struct ChooseArtistPage_Previews: PreviewProvider {
    static var previews: some View {
        ChooseArtistPage()
        .preferredColorScheme(.dark)
    }
}
