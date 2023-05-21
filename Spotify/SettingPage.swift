import SwiftUI
import PhotosUI
struct SettingPage: View {
  @State private var selectedItem: PhotosPickerItem? = nil
  @State private var selectedImageData: Data? = nil
  var body: some View {
    ZStack{
      Color.black
        .ignoresSafeArea()
      VStack{
        Image(systemName: "person.crop.circle")
          .resizable()
          .frame(width: 120 , height: 120)
          .foregroundColor(.gray)
          .padding()
        ShowImageProfile()

        Text("Mohammed")
          .foregroundColor(.white)
          .bold()
          .font(.largeTitle)
          .padding()
        HStack(spacing: 100){
          VStack{
            Text("1")
              .foregroundColor(.white)
              .bold()
            Text("Followers")
              .foregroundColor(.white)
              .bold()
          }
          VStack{
            Text("4")
              .foregroundColor(.white)
              .bold()
            Text("following")
              .foregroundColor(.white)
              .bold()
          }

        }

        List {
          Section{
            Button("Account"){}
              .foregroundColor(.white)
            Button("Data Sarver"){}
              .foregroundColor(.white)
            Button("Languages"){}
              .foregroundColor(.white)
            Button("Playback"){}
              .foregroundColor(.white)
            Button("Explicit Content"){}
              .foregroundColor(.white)
            Button("Devices"){}
              .foregroundColor(.white)
            Button("Car"){}
              .foregroundColor(.white)
          }

        }

        .scrollContentBackground(.hidden)

      }
    }
  }
}
struct SettingPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingPage()
        
    }
}
