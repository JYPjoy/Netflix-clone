//
//  HomeView.swift
//  Netflix-clone
//
//  Created by Jiyoung Park on 2022/07/18.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            //main vstack
            ScrollView(showsIndicators: false) {
                LazyVStack{
                    //MARK: - 2가지 방법
                    /*
                     1. ZStack 사용
                     2. LazyVStack - zIndex활용
                     */

                    TopRowButtons() //ExtractedView
                    TopMoviePreview(movie: exampleMovie1)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        .zIndex(-1) //숫자 작아질수록 뒤에 위치함
                    

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

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button(action: {
                //
            }, label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                //
            }, label: {
                Text("TV Shows")
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                //
            }, label: {
                Text("Movies")
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                //
            }, label: {
                Text("My List")
            })
            .buttonStyle(PlainButtonStyle())
            
            
            
        }
        //.background(Color.black)
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}
