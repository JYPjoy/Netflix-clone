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
        movies["Trending Now"] = exampleMovies
        movies["Stand-up Comedy"] = exampleMovies.shuffled()
        movies["New Release"] = exampleMovies.shuffled()
        movies["Wath it Again"] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()
    }
    
}
