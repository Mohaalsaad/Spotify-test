//
//  ChoseGender.swift
//  Spotify
//
//  Created by mohammed alsaad on 19/05/2023.
//
import SwiftUI

struct ChoseGender: View {
  @State private var selectedStrength = "Mild"
  let strengths = ["Mild", "Medium", "Mature"]
  var body: some View {
    ZStack{
      Color.black
        .ignoresSafeArea()

      NavigationStack {
        Form {
          Section {
            Picker("Strength", selection: $selectedStrength) {
              ForEach(strengths, id: \.self) {
                Text($0)
              }
            }
            .pickerStyle(.wheel)
          }
        }
        .navigationTitle("Select your cheese")
        
      }
    }

  }


  struct ChoseGender_Previews: PreviewProvider {
    static var previews: some View {
      ChoseGender()
    }
  }
}
