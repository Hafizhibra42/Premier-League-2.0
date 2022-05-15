import SwiftUI
import CoreLocation

struct Profile: View {
    var body: some View {
      VStack {
        Image("fotoprofile")
          .resizable()
          .frame(width: 225.0 , height: 225.0)
          .clipShape(Circle())
          .overlay(Circle().stroke(Color.white, lineWidth: 5))
          .shadow(radius: 1)
        
        Text("Muhammad Hafizh Ibrahim")
          .font(.title)
          .bold()
          .padding(.top ,20)
        
        Form {
          HStack {
            Text("Phone")
            Spacer()
            Text("+62 8128-889-9305")
              .foregroundColor(.gray)
              .font(.callout)
          }
          HStack {
            Text("Address")
            Spacer()
            Text("Palem Indah blok O no.5")
              .foregroundColor(.gray)
              .font(.callout)
          }
          HStack {
            Text("Email")
            Spacer()
            Text("hafizhibra42@yahoo.com")
              .foregroundColor(.gray)
              .font(.callout)
          }
          HStack {
            Text("Occupation")
            Spacer()
            Text("Mahasiswa")
              .foregroundColor(.gray)
              .font(.callout)
          }
          HStack {
            Text("My Goal")
            Spacer()
            Text("iOS Developer")
              .foregroundColor(.gray)
              .font(.callout)
          }
          
        }
        
        
        
      }
}
}
struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
            .padding(.top, 60)
    }
}

