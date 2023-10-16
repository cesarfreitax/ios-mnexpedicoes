//
//  mnexpedicoesApp.swift
//  mnexpedicoes
//
//  Created by Bento, Cesar - Admin on 02/10/23.
//

import SwiftUI

@main
struct mnexpedicoesApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.font, Font.custom("Roboto-Regular", size: 14))
        }
    }
}
