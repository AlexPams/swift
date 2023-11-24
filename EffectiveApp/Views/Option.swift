import SwiftUI

struct Option: View {
    var caption:String
    var image:String
    
    
    var body: some View {
        VStack(
            spacing: 8
        ){
            Image(image)
                .resizable()
                .frame(
                    width: 24, height: 24
                )
                .padding(24)
                .background(Color.Container)
                .clipShape(Circle())
            Text(caption)
                .font(.custom("Poppins-Regular", size:15))
                .foregroundColor(Color.Secondary)
            
        }
    }
}

#Preview {
    Option(caption:"Covid 19", image: "sun")
}
