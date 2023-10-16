//
//  EventModel.swift
//  mnexpedicoes
//
//  Created by Bento, Cesar - Admin on 02/10/23.
//

import Foundation

struct EventModel: Codable {
    var id: Int
    var title: String? = ""
    var description: String? = ""
    var photo: String? = ""
    var price: Double? =  0.0
    var date: String? = ""
}
