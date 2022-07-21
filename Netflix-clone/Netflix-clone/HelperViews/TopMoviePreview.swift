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
                    SmallVerticalButton(text: "내가 찜한 콘텐츠", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        //
                    }
                    .frame(width: 100)
                    Spacer()
                    
                    PlayButton(text: "재생", imageName: "play.fill") {
                        //
                    }
                    .frame(width: 150)
                    
                    Spacer()
                    SmallVerticalButton(text: "정보", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        //
                    }
                    .frame(width: 100)
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
