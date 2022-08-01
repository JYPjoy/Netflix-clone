//
//  VideoPreivewImage.swift
//  Netflix-clone
//
//  Created by Jiyoung Park on 2022/08/01.
//

import SwiftUI
import Kingfisher

struct VideoPreivewImage: View {
    var imageURL: URL
    var videoURL: URL
    
    @State private var showingVideoPlayer = false
    
    var body: some View {
        ZStack{
            KFImage(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
            Button(action: {
                showingVideoPlayer = true
            }, label: {
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            })
            .sheet(isPresented: $showingVideoPlayer, content: {
                SwiftUIVideoView(url: videoURL)
            })
        }
    }
}

struct VideoPreivewImage_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreivewImage(imageURL: exampleImageURL, videoURL: exampleVideoURL)
    }
}
