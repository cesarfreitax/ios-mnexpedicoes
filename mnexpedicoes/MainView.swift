//
//  ContentView.swift
//  mnexpedicoes
//
//  Created by Bento, Cesar - Admin on 02/10/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
    
        HeaderView(image: UIImage(imageLiteralResourceName: "logo-mn"))
        
        NavigationView {
            TabView {
                HomeView()
                    .tabItem {
                        Label(NSLocalizedString("home", comment: "Go home button from navigation bottom bar."), systemImage: "house.circle")
                            .tint(.pink)
                    }
                
                ScheduleView()
                    .tabItem {
                        Label(NSLocalizedString("schedule", comment: "Go schedule button from navigation bottom bar."), systemImage: "book.circle")
                    }
            }
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
