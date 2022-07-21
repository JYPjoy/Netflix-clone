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
    
    //MovieDetail View
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    //Personalization
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisodeInfo: CurrentEpisodeInfo
    
    var episodes: [Episode]? //movie vs. drama
    
    var promotionHeadline: String?
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        return ""
    }
}


struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}
