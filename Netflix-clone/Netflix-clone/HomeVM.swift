//
//  HomeVM.swift
//  Netflix-clone
//
//  Created by Jiyoung Park on 2022/07/19.
//

import Foundation

class HomeVM: ObservableObject {

    // String == Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allcategories: [String] {
       movies.keys.map({String($0)})
    }
    
    public func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    
    init(){
        setupMovies()
    }
    
    func setupMovies() {
        movies["한국 드라마"] = exampleMovies
        movies["지금 뜨는 콘텐츠"] = exampleMovies.shuffled()
        movies["폭소 만발! 30분짜리 콘텐츠"] = exampleMovies.shuffled()
        movies["새로 올라온 콘텐츠"] = exampleMovies.shuffled()
        movies["넷플릭스 인기 콘텐츠"] = exampleMovies.shuffled()
    }
    
}
