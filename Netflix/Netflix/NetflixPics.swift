//
//  NetflixPics.swift
//  Netflix
//
//  Created by Chase Allen on 11/9/22.
//

import Foundation

struct PicsNetflix: Decodable {
    let limit: Int
    let offset: Int
    let total: Int
    let image_type: String
    let url: String
}
