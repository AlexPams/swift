import SwiftUI


struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack() {
                Header(name:"Hi James")
                Spacer()
                    .frame(height: 32)
                DoctorCard(
                    name:"Dr. Imran Syahir",
                    image: "doctorPhoto", speciality: "General Doctor", firstTime: "11:00", secondTime: "12:00", date: "Sunday, 12 June"
                )
                Spacer()
                    .frame(height: 20)
                Search()
                Spacer()
                    .frame(height: 24)
                HStack(
                    spacing: 13, content: {
                        Option(caption:"Covid 19", image: "sun")
                        Option(caption:"Doctor", image: "profile-add")
                        Option(caption:"Medicine", image: "link")
                        Option(caption:"Hospital", image: "hospital")
                    }
                )
                Spacer()
                    .frame(height: 32)
                VStack(
                    spacing: 16,
                    content: {
                        HStack{
                            Text("Near Doctor")
                            Spacer()
                        }
                        VStack(
                            spacing: 12,
                            content: {
                               NearDoctorCard(
                                image: "brostito_photo", name: "Dr. Joseph Brostito", distance: "1.2", speciality: "Dental Specialist", rating: "4.8", reviewsCount: 120, openTime: "17:00"
                               
                               )
                                NearDoctorCard(
                                 image: "doctorPhoto", name: "Dr. Imran Syahir", distance: "1.2", speciality: "General Doctor", rating: "4.5", reviewsCount: 228, openTime: "18:00"
                                
                                )
                            }
                        )
                        
                    }
                )
                    
                
                
            }
            .padding()
        }
        HStack(
            spacing: 13, 
            content: {
                Button(isOpen: true,image: "home", caption: "Home")
                Button(isOpen: false,image: "calendar", caption: "Calendar")
                Button(isOpen: false,image: "message", caption: "Message")
                Button(isOpen: false,image: "profile", caption: "Profile")
            }
        )
        .padding(.horizontal, 24)
        .padding(.vertical, 16)

    }
}

#Preview {
    ContentView()
}
