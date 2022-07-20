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
                
                //장르(Dystopian ~ Sci-Fi TV)
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
                
                //(MyList, Play, Info)Btn 위치
                HStack {
                    Spacer()
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        //
                    }
                    Spacer()
                    
                    WhiteButton(text: "Play", imageName: "play.fill") {
                        //
                    }
                    .frame(width: 200)
                    
                    Spacer()
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        //
                    }
                    Spacer()
                }
            }
            .background(
                LinearGradient.blackOpacityGradient
                    .padding(.top, 250) //gradient 시작점
            )
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
