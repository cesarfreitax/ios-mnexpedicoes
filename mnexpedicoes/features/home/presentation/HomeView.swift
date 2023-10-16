//
//  HomeView.swift
//  mnexpedicoes
//
//  Created by Bento, Cesar - Admin on 02/10/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                setupNextEvents()
                setupLastAlbuns()
            }
            .padding(8)
    
        }
    }
    
    @ViewBuilder
    func setupNextEvents() -> some View {
        
        let nextEvents = viewModel.getNextEvents(quantity: 6) ?? []
        
        if (!nextEvents.isEmpty) {
            setupNextEventsView(events: nextEvents)
        } else {
            setupEmptyNextEventsPlaceholderView()
        }
    }
    
    @ViewBuilder
    func setupNextEventsView(events: [EventModel]) -> some View {
        TitleView(title: NSLocalizedString("upcoming_events", comment: "Show a sequence of upcoming events."))
         LazyVGrid(columns: adaptiveColumns) {
             ForEach(events, id: \.self.id) { event in
                VStack {
                    AsyncImage(url: URL(string: event.photo!)) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: ContentMode.fit)
                            .frame(width: 150)
                    } placeholder: {
                        ProgressView()
                            .frame(width: 150, height: 150)
                    }
                                                
                    
                    Text(event.title!)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)

                    Text(event.date!)
                        .foregroundColor(.black)
                    
                }
                
            }
        }
        
        NavigationLink("Ver agenda completa") {
            // TO-DO
        }
        .padding()
    }
    
    @ViewBuilder
    func setupEmptyNextEventsPlaceholderView() -> some View {
        Text("Em breve!")
            .padding()
    }
    
    @ViewBuilder
    func setupLastAlbuns() -> some View {
        let lastAlbuns = viewModel.getLastAlbuns(quantity: 4)
        
        if (!lastAlbuns.isEmpty) {
            setupLastAlbunsView(albuns: lastAlbuns)
        } else {
            // PLACEHOLDER
        }
    }
    
    @ViewBuilder
    func setupLastAlbunsView(albuns: [AlbumModel]) -> some View {
        TitleView(title: NSLocalizedString("photo_album", comment: "Gallery with a lot of pics from our last events."))
        
         LazyVGrid(columns: adaptiveColumns) {
             ForEach(albuns, id: \.self.id) { album in
                VStack {
                    AsyncImage(url: URL(string: album.photo ?? "")) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: ContentMode.fit)
                            .frame(width: 150)
                    } placeholder: {
                        ProgressView()
                            .frame(width: 150, height: 150)
                    }
                                                
                    
                    Text(album.title ?? "")
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(width: 150)
                        .font(.system(size: Consts.textSmall))
                    
                }
                
            }
        }
        
        NavigationLink("Ver álbum completo") {
            // TO-DO
        }
        .padding()
    }
    
    
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
