import SwiftUI
struct MusicPage: View {
  @State var slider : Int = 4
  @State private var celsius: Double = 0
  @State private var showPlayer: Bool = false

  var body: some View {
    ZStack{
      Color.black
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $showPlayer) {
          FirstSongPage()
        }
      VStack(spacing: 50){

        ScrollView{
          HStack{
            Image("3")
              .resizable()
              .frame(width: 150 , height: 150)
            VStack {
              Button {
                showPlayer = true
              }

            label: {
              Label("paly" , systemImage: "play.fill")
                .frame(maxWidth: 290 , maxHeight: 20)
                .foregroundColor(.black)
                .padding()
                .background(Color.white)
                .clipShape(Capsule())
                .padding()

            }



              Text("First Artist , any descrebtion we can add it here.")
                .foregroundColor(.gray)
            }
          }
          HStack{
            Image("3")
              .resizable()
              .frame(width: 150 , height: 150)
            VStack {
              Button {
                showPlayer = true
              }

            label: {
              Label("paly" , systemImage: "play.fill")
                .frame(maxWidth: 290 , maxHeight: 20)
                .foregroundColor(.black)
                .padding()
                .background(Color.white)
                .clipShape(Capsule())
                .padding()

            }



              Text("First Artist , any descrebtion we can add it here.")
                .foregroundColor(.gray)
            }
          }

        }
      }
    }
  }
}
struct MusicPage_Previews: PreviewProvider {
    static var previews: some View {
        MusicPage()
    }
}
