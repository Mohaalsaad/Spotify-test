
import SwiftUI
import Firebase
import FirebaseAuth

struct HowToSignUpPage: View {
  var body: some View {
    NavigationView{

      ZStack{
      Color.black
        .ignoresSafeArea()

      VStack(spacing: 20){
        Image("spticon")
          .background(Color.white)
        Text("Millons of songs\n  Free on Sotify ")
          .foregroundColor(.white)
          .bold()
          .font(.largeTitle)

        HStack {
          HStack {
            NavigationLink("Sign up free" , destination: SignUpEmail())
              .frame(maxWidth: 290 , maxHeight: 20)
              .foregroundColor(.white)
              .padding()
              .background(Color.green)
              .clipShape(Capsule())
              .padding()
          }
        }
        GoogleButton()
        FaceBookButton()
        AppleButton()

        NavigationLink("Login" , destination: LogInPage(isOn1: false))
        .bold()
        .foregroundColor(.white)
      }
     }
    }
  }
}


struct HowToSignUpPage_Previews: PreviewProvider {
    static var previews: some View {
        HowToSignUpPage()
    }
}
