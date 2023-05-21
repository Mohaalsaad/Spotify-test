//  Created by mohammed alsaad on 21/05/2023.

import SwiftUI
import Firebase
import FirebaseAuth

struct LogInPage: View {
  @State  var email: String = ""
  @State  var password: String = ""
  @State var  isOn1 : Bool
    var body: some View {

      ZStack{
        Color.black
          .ignoresSafeArea()
        VStack{
          Text("Log In")
            .foregroundColor(.white)
            .bold()
            .font(.largeTitle)
            .padding()
          Text("Enter your Email")
            .foregroundColor(.white)
            .bold()
          HStack {
            TextField("Email", text: $email)
          }
          .foregroundColor(.white)
          .padding()
          .frame(maxWidth: 360 , maxHeight: 40)
          .overlay(RoundedRectangle(cornerRadius: 50)
            .stroke(.gray , lineWidth: 3))
          .padding()
          Text("Enter your password")
            .foregroundColor(.white)
            .bold()
          HStack {
            SecureField("password", text: $password)
            Image(systemName: "eye.slash")
          }
          .foregroundColor(.white)
          .padding()
          .frame(maxWidth: 360 , maxHeight: 40)
          .overlay(RoundedRectangle(cornerRadius: 50)
            .stroke(.gray , lineWidth: 3))
          .padding()
          HStack {
        
            Spacer()
            Toggle("Keep Me Logged in", isOn: $isOn1)
              .toggleStyle(CheckboxToggleStyle(style: .square))
              .foregroundColor(.green)
          }
          .padding()
          Spacer()

          Button(action: { login() }) {
                         Text("Sign in")
                     }
                    .frame(maxWidth: 100 , maxHeight: 20)
                    .foregroundColor(.black)
                    .bold()
                    .padding()
                    .background(Color.white)
                    .clipShape(Capsule())
                    .padding()
  }
      }
    }
  func login() {
    Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
              if error != nil {
                  print(error?.localizedDescription)
              } else {
                  print("success")
              }
          }
      }
}

struct LogInPage_Previews: PreviewProvider {
    static var previews: some View {
      LogInPage(isOn1: false)
    }
}
