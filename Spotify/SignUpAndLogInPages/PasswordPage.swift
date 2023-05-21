
import SwiftUI

struct PasswordPage: View {
  @State  var email: String = ""
  @State  var password: String = ""
  @State  var repassword: String = ""
  var body: some View {

      ZStack{
        Color.black
          .ignoresSafeArea()
        VStack{
          Text("Create Password ")
            .foregroundColor(.white)
            .bold()
            .font(.largeTitle)
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

          Text("Confirm password")
            .foregroundColor(.white)
            .bold()
          HStack {
            SecureField("password", text: $repassword)
            Image(systemName: "eye.slash")
          }
          .foregroundColor(.white)
          .padding()
          .frame(maxWidth: 360 , maxHeight: 40)
          .overlay(RoundedRectangle(cornerRadius: 50)
            .stroke(.gray , lineWidth: 3))

          HStack {
            Text("Use at least 8 characters.")
              .foregroundColor(.white)
              .font(.system(size: 15))
            Spacer()
          }
          .padding()
          Spacer()
          NavigationLink("Next" , destination: BirthDayPage())
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
struct PasswordPage_Previews: PreviewProvider {
    static var previews: some View {
        PasswordPage()
        .preferredColorScheme(.dark)
    }
}
