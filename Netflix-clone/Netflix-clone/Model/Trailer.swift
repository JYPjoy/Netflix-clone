//
//  Trailer.swift
//  Netflix-clone
//
//  Created by Jiyoung Park on 2022/08/01.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
    
}
