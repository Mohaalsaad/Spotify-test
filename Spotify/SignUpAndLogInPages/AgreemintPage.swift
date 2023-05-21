//
//  AgreemintPage.swift
//  Spotify
//
//  Created by mohammed alsaad on 19/05/2023.
//

import SwiftUI

struct AgreemintPage: View {
  @State  var name : String
  @State var  isOn1 : Bool
  var body: some View {

      ZStack{
        Color.black
          .ignoresSafeArea()
        VStack{
          Text("What's your Name ?")
            .foregroundColor(.white)
            .bold()
            .font(.largeTitle)

          TextField("", text: $name)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: 360 , maxHeight: 40)
            .overlay(
              RoundedRectangle(cornerRadius: 50)
                .stroke(.gray , lineWidth: 3))
          HStack {
            Text("  This appears on spotify Profile")
              .foregroundColor(.white)
              .bold()
              .font(.system(size: 15))
            Spacer()
          }

          Text("By tapping on (Create account), you agree to the Spotify Terms of Use.")
            .foregroundColor(.white)
            .padding()
          Text("terms of us")
            .foregroundColor(.green)
            .bold()
            .padding()
          Text("To learn more about how Spotify collects, uses, shares and protects your personal data, please see the Spotify Privacy Policy.")
            .foregroundColor(.white)
            .padding()
          Text("Privacy Policy")
            .foregroundColor(.green)
            .bold()

          HStack{
            Text("Share my registration data with Spotify's content providers for marketing purposes.")
              .foregroundColor(.white)
              .padding()
            Toggle("", isOn: $isOn1)
              .toggleStyle(CheckboxToggleStyle(style: .square))
              .foregroundColor(.green)
          }


          Spacer()
            .padding()
          NavigationLink("Creat Account!", destination: ChooseArtistPage())
          .frame(maxWidth: 140 , maxHeight: 20)
          .foregroundColor(.black)
          .bold()
          .padding()
          .background(Color.white)
          .clipShape(Capsule())
          .padding()


        }




      }
    }
    
}
struct AgreemintPage_Previews: PreviewProvider {
    static var previews: some View {
      AgreemintPage(name: "", isOn1: false)
    }
}
