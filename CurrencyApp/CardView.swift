import SwiftUI

struct CardView: View {
    let menu_option: MenuOption
    var body: some View {
        VStack(alignment: .leading) {
            Label(menu_option.title, systemImage: menu_option.icon).font(.headline)
            
            // change systemImage

        }
        .padding()
        .foregroundColor(menu_option.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var menu_option = MenuOption.sampleData[0]
    static var previews: some View {
        CardView(menu_option: menu_option)
            .background(menu_option.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}

struct Previews_CardView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
