
import Foundation
import SwiftUI

struct SearchBar: UIViewRepresentable  {
  
  @Binding var text: String
  
  func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
    let searchbar = UISearchBar(frame: .zero)
    searchbar.delegate = context.coordinator
    return searchbar
  }
  
  func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
    uiView.text = text
  }
  
  func makeCoordinator() -> SearchBar.Coordinator {
    return Coordinator(text: $text)
  }
  
  class Coordinator: NSObject, UISearchBarDelegate {
    
    @Binding var text: String
    
    init(text: Binding<String>) {
      _text = text
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
      text = searchText
    }
  }
}
