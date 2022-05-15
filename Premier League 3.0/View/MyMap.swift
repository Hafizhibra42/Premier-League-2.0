import SwiftUI
import CoreLocation

struct MyMap: View {
    var body: some View {
        NavigationView {
          VStack {
            GeometryReader { proxy in
              MapView(coordinate: CLLocationCoordinate2D(latitude: -6.2394, longitude: 106.9300))
                .frame(width: proxy.size.width,height: proxy.size.height, alignment: .center)
            }
            }
            .navigationTitle("My Location")
        }
    }
}

struct MyMap_Previews: PreviewProvider {
    static var previews: some View {
        MyMap()
    }
}

