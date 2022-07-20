//
//  HomeView.swift
//  Netflix-clone
//
//  Created by Jiyoung Park on 2022/07/18.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            //main vstack
            ScrollView(showsIndicators: false) {
                LazyVStack{
                    ForEach(vm.allcategories, id: \.self) { category in
                        //category
                       
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            
                            //카테고리 내 영화 목록
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack{
                                    ForEach(vm.getMovie(forCat: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }   
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
