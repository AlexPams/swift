import SwiftUI

struct Button: View {
    var isOpen = false;
    var image:String;
    var caption:String;
 
    
    var body: some View {
        HStack(
            spacing: 8, content: {
                Image(image)
                    .resizable()
                    .frame(
                        width: 24, height: 24
                    )
                    .foregroundColor(isOpen ? Color.OnButton : Color.Secondary)
                Text(isOpen ? caption : "")
                    .foregroundColor(isOpen ? Color.OnButton : Color.Primary)
            }
        )
        .padding(12)
        .background(isOpen ? Color.Button : Color.Primary)
        .cornerRadius(12)
    }
}

#Preview {
    FooterButton(isOpen: true,image: "home", caption: "Home")
}
