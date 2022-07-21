//
//  Episode.swift
//  Netflix-clone
//
//  Created by Jiyoung Park on 2022/07/21.
//

import Foundation

struct Episode: Identifiable {
    var id = UUID().uuidString //identifiable
    
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
    
    var thumbnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
    
}
