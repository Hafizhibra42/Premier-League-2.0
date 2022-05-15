import SwiftUI

struct ClubDetail: View {
    let club : Club
    var body: some View {
            ScrollView {
            VStack{
                    Image(club.clubLogo)
                        .resizable()
                        .frame(width: 160.0 , height: 165.0)
                        .padding(.bottom , 20)
                    
                Section {
                    
                    HStack {
                        Text("Club Name:")
                        Spacer()
                        Text(club.clubName)
                          .foregroundColor(.gray)
                          .font(.callout)
                          .padding()
                    }
                    HStack {
                        Text("Nickname:")
                        Spacer()
                        Text(club.nickname)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .padding()
                    }
                    HStack {
                        Text("Founded:")
                        Spacer()
                        Text(club.clubBirthDate)
                          .foregroundColor(.gray)
                          .font(.callout)
                          .padding()
                    }
                    HStack {
                        Text("Ground:")
                        Spacer()
                        Text(club.ground)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .padding()
                    }
                    HStack {
                        Text("Manager:")
                        Spacer()
                        Text(club.manager)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .padding()
                    }
                    VStack {
                        Text("Description:")
                            .padding(.top)
                            .padding(.bottom)
                        
                        HStack{
                            Text(club.description)
                                .foregroundColor(.gray)
                        }
                    }
                }
                
                
                }
            }.padding(EdgeInsets(top: 0 , leading: 16 , bottom: 16 , trailing: 16))
    }
}

struct ClubDetail_Previews: PreviewProvider {
    static var previews: some View {
        ClubDetail(club: Club(id: 0 , clubLogo: "Arsenal" , clubName: "Arsenal" , nickname: "The Gunners" , clubBirthDate: "October 1886" , ground: "Emirates Stadium" , manager: "Mikel Arteta" , description: "Arsenal Football Club is a professional men's football club based in Islington, London, England that plays in the Premier League, the top flight of English football. The club has won 13 league titles (including one unbeaten title), a record 14 FA Cups, two League Cups, 16 FA Community Shields, the League Centenary Trophy, one European Cup Winners' Cup, and one Inter-Cities Fairs Cup."))
            .padding(.top , 30)
    }
}

