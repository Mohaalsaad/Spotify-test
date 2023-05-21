//
//  BirthDayPage.swift
//  Spotify
//
//  Created by mohammed alsaad on 19/05/2023.
//

import SwiftUI

struct BirthDayPage: View {

  @State private var date = Date.now

  var body: some View {
    
      ZStack{
        Color.black
          .ignoresSafeArea()
        VStack{
          Text("What's your birth daye?")
            .foregroundColor(.white)
            .bold()
            .font(.largeTitle)
            .padding()
          DatePicker(selection: $date, in: ...Date.now, displayedComponents: .date) {
            Text("Select a date")
              .font(.title3)
          }
          .foregroundColor(.white)
          .padding()


          Text(" \(date.formatted(date: .long, time: .omitted)) 🥳")
            .foregroundColor(.white)

          Spacer()
          NavigationLink("Next" , destination: AgreemintPage(name: "", isOn1: false))
          .frame(maxWidth: 100 , maxHeight: 20)
          .foregroundColor(.black)
          .bold()
          .padding()
          .background(Color.white)
          .clipShape(Capsule())
          .padding()

          .padding()
        }

      }
    }

}
struct BirthDayPage_Previews: PreviewProvider {
    static var previews: some View {
      BirthDayPage()
    }
}
