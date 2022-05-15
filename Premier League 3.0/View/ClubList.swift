import SwiftUI

struct ClubList: View {
    
    @State var text = ""
    
    var body: some View {
        NavigationView {
          VStack {
            List(clubs) { club in
              NavigationLink(destination: ClubDetail(club:club)){
                HStack{
                  Image(club.clubLogo)
                    .resizable()
                    .frame(width: 50.0, height: 53.0)
                  
                  VStack(alignment: .leading){
                    Text(club.clubName).font(.system(size: 20)).bold()
                    Text(club.nickname).font(.system(size: 18))
                  }
                }.padding(.vertical,8)
              }
            }.navigationBarTitle(Text("Club List"))
            
            .navigationBarItems(
              leading:
                Text("Hello, Mr. Hafizh")
                .font(.body)
                .foregroundColor(Color(.systemGray)),
              trailing:
                NavigationLink(destination: Profile()) {
                  Image("fotoprofile")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                }
            )
            .navigationViewStyle(StackNavigationViewStyle())
          }
                        }
                }
            }

struct ClubList_Previews: PreviewProvider {
    static var previews: some View {
        ClubList()
    }
}


