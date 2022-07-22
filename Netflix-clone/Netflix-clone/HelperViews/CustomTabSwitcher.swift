//
//  CustomTabSwitcher.swift
//  Netflix-clone
//
//  Created by Jiyoung Park on 2022/07/22.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    var tabs: [CustomTab]
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {

        VStack {
            // Custom Tab Picker
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            //Red Bar
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                            //Button
                            Button(action: {
                                
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                            })
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
            }
            // Selected View
            Text("SELECTED VIEW")
        }
        .foregroundColor(.white)
    }
}

enum CustomTab: String {
    case episodes = "회차"
    case trailers = "예고편 및 다른 영상"
    case more = "함께 시청된 콘텐츠"
}


struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
        }
    }
}
