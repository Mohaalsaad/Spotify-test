
import SwiftUI

struct NotificationPage: View {
  @State private var showingAlert = false
  var body: some View {
    ZStack{
      Color.black
        .ignoresSafeArea()
      VStack{
        Image("notifica")
        Text("Turn on push notifications.")
          .foregroundColor(.white)
          .bold()
          .font(.title)
          .padding()
        Text("Get updates about new music, special offers, events and more..")
          .foregroundColor(.white)
          .bold()

        VStack{
          Button("Turn on notifications"){showingAlert = true}
              .frame(maxWidth: 200 , maxHeight: 20)
              .foregroundColor(.black)
              .bold()
              .padding()
              .background(Color.white)
              .clipShape(Capsule())
              .alert("Spotify Would like to send you notifications.", isPresented: $showingAlert) {
                Button("Allow", role: .cancel) { }
              .padding()
              Button("Don't allow"){}
        }

          NavigationLink("Not now" , destination: MyTapBare())
          .bold()
          .foregroundColor(.white)
          .padding()
          Text("Manage your notification categories in Settings anytime.")
            .foregroundColor(.white)
            .bold()
            .navigationBarBackButtonHidden(true)
        }
      }
    }
  }
}
struct NotificationPage_Previews: PreviewProvider {
    static var previews: some View {
        NotificationPage()
    }
}
