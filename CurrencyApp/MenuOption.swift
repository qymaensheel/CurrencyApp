import SwiftUI

struct MenuOption: Identifiable {
    let id: UUID
    var title: String
    var icon: String
    var theme: Theme

    init(id: UUID = UUID(), title: String, icon: String, theme: Theme) {
        self.id = id
        self.title = title
        self.icon = icon
        self.theme = theme
    }
}

extension MenuOption {
    static let sampleData: [MenuOption] =
    [
        MenuOption(title: "Currency Converter", icon: "dollarsign.arrow.circlepath", theme: .lavender),
        MenuOption(title: "Currency Plot", icon: "chart.line.uptrend.xyaxis", theme: .seafoam),
    ]
}
