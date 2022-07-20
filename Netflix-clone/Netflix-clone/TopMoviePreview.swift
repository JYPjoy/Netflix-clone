//
//  TopMoviePreview.swift
//  Netflix-clone
//
//  Created by Jiyoung Park on 2022/07/20.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: Movie
    
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: cat){
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
    
    
    var body: some View {
        ZStack{
            //image와 3개 modifier 세트로 알아두기(resizable, scaledtofill, clipper)
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack{
                Spacer()
                HStack{
                    ForEach(movie.categories, id: \.self) { category in
                        
                        HStack {
                            Text(category)
                                .font(.footnote)
                            
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
  
                        }
                    }
                }
                HStack {
                    Text("My List")
                    Text("Play Button")
                    Text("Info Button")
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}