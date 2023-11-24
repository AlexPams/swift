import SwiftUI

struct NearDoctorCard: View {
    
    var image:String;
    var name:String;
    var distance:String;
    var speciality:String;
    var rating:String;
    var reviewsCount:Int
    var openTime:String
    
    var body: some View {
        VStack(
            spacing: 20
        ){
            HStack() {
                HStack{
                    Image(image)
                        .resizable()
                        .frame(width: 53, height: 53)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    VStack(
                        alignment: .leading, spacing: 8, content: {
                            Text(name)
                                .font(.custom("Poppins-Bold", size:16))
                            Text(speciality)
                                .font(.custom("Poppins-Regular", size:14))
                                .foregroundColor(Color.Secondary)
                        }
                    )
                }
                Spacer()
                HStack{
                    Image("location")
                    Text("\(distance) KM")
                        .font(.custom("Poppins-Regular", size:14))
                        .foregroundColor(Color.Secondary)
                }
            }
            Divider()
            HStack(
                spacing: 6
            ){
                HStack{
                    Image("clock")
                        .resizable()
                        .frame(
                            width: 20, height: 20
                        )
                        .foregroundColor(Color.Attention)
                    Text("\(rating) (\(reviewsCount) Reviews)")
                        .font(.custom("Poppins-Regular", size:12))
                        .foregroundColor(Color.Attention)
                }
                Spacer()
                HStack(
                    spacing: 6
                ){
                    Image("clock")
                        .resizable()
                        .frame(
                            width: 20, height: 20
                        )
                        .foregroundColor(Color.Surface)
                    Text("Open at \(openTime)")
                        .font(.custom("Poppins-Regular", size:12))
                        .foregroundColor(Color.Surface)
                }
                Spacer()
            }
            
        }
        .padding(.horizontal,16)
        .padding(.vertical, 20)
        .background(Color.Primary)
        .cornerRadius(12)
    }
}

#Preview {
    NearDoctorCard(
     image: "brostito_photo", name: "Dr. Joseph Brostito", distance: "1.2", speciality: "Dental Specialist", rating: "4.8", reviewsCount: 120, openTime: "17:00"
    
    )
}
