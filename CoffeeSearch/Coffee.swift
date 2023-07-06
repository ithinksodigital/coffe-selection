//
//  Coffee.swift
//  CoffeeSearch
//
//  Created by Rafal Pawelec on 23/06/2023.
//

import Foundation

struct Coffee: Identifiable, Decodable {
    var id: Int
    var uid: String
    var blend_name: String
    var origin: String
    var variety: String
    var notes: String
    var intensifier: String
}

extension Coffee {
    var blendName: String { return blend_name }
}
