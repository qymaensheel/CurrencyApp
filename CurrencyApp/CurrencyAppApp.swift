//
//  CurrencyAppApp.swift
//  CurrencyApp
//
//  Created by Guest User on 15/11/2022.
//

import SwiftUI

@main
struct CurrencyAppApp: App {
    var body: some Scene {
        WindowGroup {
                   NavigationView {
                       MenuView(menu_options: MenuOption.sampleData)
                   }
               }
           }
       }
