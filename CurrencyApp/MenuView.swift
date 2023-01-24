import SwiftUI

struct MenuView: View {
    let menu_options: [MenuOption]
    
    var body: some View {
        VStack{
            List {
                NavigationLink(destination: ConverterView()) {
                    CardView(menu_option: menu_options[0])
                        .listRowBackground(menu_options[0].theme.mainColor)
                }
                .listRowBackground(menu_options[0].theme.mainColor)
                
                NavigationLink(destination: PlotView()) {
                    CardView(menu_option: menu_options[1])
                        .listRowBackground(menu_options[1].theme.mainColor)
                }
                .listRowBackground(menu_options[1].theme.mainColor)
                
            }
            .navigationTitle("Currency App")
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MenuView(menu_options: MenuOption.sampleData)
        }
    }
}

