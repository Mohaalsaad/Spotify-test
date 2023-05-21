

import SwiftUI

struct HomePage: View {
  var body: some View {
    ZStack{
      Color.black
        .ignoresSafeArea()
      VStack{
        ScrollView{
          HStack{
            Text("Good evening")
              .foregroundColor(.white)
              .bold()
              .font(.title)
              .padding()
            Spacer()
            Image(systemName: "gearshape")
              .foregroundColor(.white)
              .padding()
          }
          Text("To get you started")
            .foregroundColor(.white)
            .bold()
            .font(.title3)
            .padding()
          ScrollView(){
            HStack{
              ForEach(0..<4){ mex in
                SomeImage(mex: "mex\(mex)")
                Spacer()
              }
            }

            
            
          }
          Text("Made for You")
            .foregroundColor(.white)
            .bold()
            .font(.title3)
            .padding()

            ScrollView(){
              HStack{
                ForEach(0..<4){ mix in
                  SomeImage2(mix: "mix\(mix)")
                  
                  Spacer()
                }
              }
          }
          Text("What's news")
            .foregroundColor(.white)
            .bold()
            .font(.title3)
            .padding()
          ScrollView(){
            HStack{
              ForEach(0..<6){ news in
                SomeImage3(news: "news\(news)")

                Spacer()
              }
            }
        }
          Text("Your favorite artist")
            .foregroundColor(.white)
            .bold()
            .font(.title3)
            .padding()
          ScrollView(.horizontal , showsIndicators: false){
            HStack{
              ForEach(0..<6){ fa in
                SomeImage4(fa: "fa\(fa)")

                Spacer()
              }
            }
        }



          }
        

        }
      }
    }
    
   
  }

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}


