//
//  ShowImageProfile.swift
//  Spotify
//
//  Created by mohammed alsaad on 21/05/2023.
//

import SwiftUI

struct ShowImageProfile: View {
  @State private var image = UIImage()
  @State private var showSheet = false
    var body: some View {
      VStack {
              Image(uiImage: self.image)
                .resizable()
                .cornerRadius(50)
                .frame(width: 100, height: 100)
                .background(Color.black.opacity(0.2))
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())

           Text("Edit")
               .font(.headline)
               .frame(maxWidth: 100)
               .frame(height: 50)
               .background(Color.gray)
               .cornerRadius(16)
               .foregroundColor(.white)
               .onTapGesture {
                 showSheet = true
               }
          }
          .padding(.horizontal, 20)
          .sheet(isPresented: $showSheet) {
            ImagePicker(sourceType: .photoLibrary, selectedImage: self.image)
          }


          }
    }


struct ShowImageProfile_Previews: PreviewProvider {
    static var previews: some View {
        ShowImageProfile()
    }
}
