import SwiftUI
import AVFAudio
import AVFoundation

struct FirstSongPage: View {
  @State var value : Double = 0.0
  @Environment(\.dismiss) var dismiss
    var body: some View {
      ZStack{
        Color("darckblue")
          .ignoresSafeArea()
        VStack(spacing: 50){
          Button {
            dismiss()
          } label: {
            Image(systemName: "xmark.circle")
              .foregroundColor(.white)
              .font(.system(size: 30))
             // .offset(x:-190 , y: -90)
          }


          Image("news1")
            .resizable()
            .frame(width: 280, height: 280)
          ZStack(alignment: .leading){
            Capsule().fill(Color.black.opacity(0.08) ).frame(height: 8)
            Capsule().fill (Color.green).frame (width: 200, height: 8)
          }
          .padding()


          HStack(spacing: 50){
            PlayButton(play: "repeat"){}
            PlayButton(play: "gobackward.10"){}
            PlayButton(play: "play.circle.fill" , size: 50){
              playSong()
            }
            PlayButton(play: "goforward.10"){}
            PlayButton(play: "stop"){
              stopSong()
            }
          }


        }
      }
    }
 
}

struct FirstSongPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstSongPage()
    }
}
