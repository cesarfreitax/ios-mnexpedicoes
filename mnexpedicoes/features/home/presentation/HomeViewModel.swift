//
//  HomeViewModel.swift
//  mnexpedicoes
//
//  Created by Bento, Cesar - Admin on 02/10/23.
//

import Foundation

class HomeViewModel : ObservableObject {
    
    @Published var events: [EventModel] = []
    @Published var albuns: [AlbumModel] = []
    
    init () {
        parseEvents(json: getEventsJson())
        parseAlbuns(json: getAlbunsJson())
    }
    
    // EVENTS METHODS
    func parseEvents(json: Data) {
        let decoder = JSONDecoder()
        
        if let result = try? decoder.decode(EventsModel.self, from: json) {
            events = result.events
        }
    }
    
    func getEventsJson() -> Data {
        let path = Bundle.main.path(forResource: "events", ofType: "json")
        let jsonData = try! Data(contentsOf: URL(fileURLWithPath: path!))
        return jsonData
    }
    
    func getNextEvents(quantity: Int) -> [EventModel]? {
        return Array(events.prefix(quantity))
    }
    
    // ALBUNS METHODS
    func parseAlbuns(json: Data) {
        let decoder = JSONDecoder()
        
        if let result = try? decoder.decode(AlbunsModel.self, from: json) {
            albuns = result.albuns
        }
    }

    func getAlbunsJson() -> Data {
        let path = Bundle.main.path(forResource: "albuns", ofType: "json")
        let jsonData = try! Data(contentsOf: URL(fileURLWithPath: path!))
        return jsonData
    }
    
    func getLastAlbuns(quantity: Int) -> [AlbumModel] {
        return Array(albuns.prefix(quantity))
    }
    
}
