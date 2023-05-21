
import SwiftUI
import FirebaseCore

 

struct SignUpEmail: View {

  @State  var email: String = ""
  @State  var password: String = ""
  var body: some View {

      ZStack{
        Color.black
          .ignoresSafeArea()
        VStack{

          Text("What's your Email ?")
            .foregroundColor(.white)
            .bold()
            .font(.largeTitle)

          TextField("Email", text: $email)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: 360 , maxHeight: 40)
            .overlay(
              RoundedRectangle(cornerRadius: 50)
                .stroke(.gray , lineWidth: 3)

            )


          HStack {
            Text("You will need to confirm this email later.")
              .foregroundColor(.white)
              .font(.system(size: 15))
            Spacer()

          }
          .padding()

          Spacer()

          NavigationLink("Next" , destination: PasswordPage())
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

  

    

}
struct SignUpEmail_Previews: PreviewProvider {
    static var previews: some View {
        SignUpEmail()
    }
}
