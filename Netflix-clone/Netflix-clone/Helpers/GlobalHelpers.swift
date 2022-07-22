//
//  GlobalHelpers.swift
//  Netflix-clone
//
//  Created by Jiyoung Park on 2022/07/18.
//

import Foundation
import SwiftUI


// MARK: -Movie
let exampleMovie1 = Movie(id: UUID().uuidString,
                          name: "DARK",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["거부할 수 없는 끌림", "사극", "로맨틱", "한국"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 1,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "대런 스타",
                          cast: "릴리 콜린스, 필리핀 르루아볼리외, 애슐리 박")
let exampleMovie2 = Movie(id: UUID().uuidString,
                          name: "Travelers",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 2,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "대런 스타",
                          cast: "릴리 콜린스, 필리핀 르루아볼리외, 애슐리 박",
                          promotionHeadline: "Best Rated Show")
let exampleMovie3 = Movie(id: UUID().uuidString,
                          name: "Community",
                          thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 3,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "대런 스타",
                          cast: "릴리 콜린스, 필리핀 르루아볼리외, 애슐리 박")
let exampleMovie4 = Movie(id: UUID().uuidString,
                          name: "Alone",
                          thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020, rating: "TV-MA",
                          numberOfSeasons: 4,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "대런 스타",
                          cast: "릴리 콜린스, 필리핀 르루아볼리외, 애슐리 박",
                          promotionHeadline: "New Episodes coming soom")
let exampleMovie5 = Movie(id: UUID().uuidString,
                          name: "Hannibal",
                          thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 5,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "대런 스타",
                          cast: "릴리 콜린스, 필리핀 르루아볼리외, 애슐리 박")
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Hannibal",
                          thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 6,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "대런 스타",
                          cast: "릴리 콜린스, 필리핀 르루아볼리외, 애슐리 박",
                          promotionHeadline: "Watch Season 6 Now")

let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]


//MARK: -Episode
let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: " 파리의 에밀리",
                                             description: "좋아, 모험을 떠나는 거야. 상사 대신 1년 동안 파리의 마케팅 회사에서 일하게 된 에밀리. 세상에서 가장 낭만적인 도시에 도착한 소감은? 프랑스를 배워야 했어!",
                                             season: 1, episode: 1)


extension LinearGradient{
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom
    )
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
