import SwiftUI

struct ContentView: View {
    
    @State var text = ""
    
    var body: some View {
      TabView {
        ClubList()
          .tabItem {
            Image(systemName: "house")
            Text("Home")
          }
        Profile()
          .tabItem {
            Image(systemName: "person.fill")
            Text("Profile")
          }
        MyMap()
          .tabItem {
            Image(systemName: "location")
            Text("My Location")
          }
        SearchView()
          .tabItem {
            Image(systemName: "magnifyingglass")
            Text("Search")
          }
      }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

