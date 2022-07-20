//
//  Movie.swift
//  Netflix-clone
//
//  Created by Jiyoung Park on 2022/07/18.
//

import Foundation

struct Movie : Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
}
