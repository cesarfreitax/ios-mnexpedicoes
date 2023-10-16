//
//  AlbumModel.swift
//  mnexpedicoes
//
//  Created by Bento, Cesar - Admin on 13/10/23.
//

import Foundation

struct AlbumModel: Codable {
    var id: Int
    var title: String? = ""
    var photo: String? = ""
    var link: String? = ""
    var startDate: String? = ""
    var endDate: String? = ""
}
