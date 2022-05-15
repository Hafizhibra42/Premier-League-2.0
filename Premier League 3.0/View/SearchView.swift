
import SwiftUI

struct SearchView: View {
  
  @State var text: String = ""
  
  var body: some View {
    NavigationView {
      ScrollView {
        SearchBar(text: $text)
        ForEach(players.filter {
          self.text.isEmpty ? true : $0.lowercased() .prefix(text.count).contains(text.lowercased())
        }, id: \.self) { player in
          HStack {
            Text(player)
              .padding()
            Spacer()
          }
        }
      }.navigationTitle("Famous Players")
    }
  }
     }
      
  

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
