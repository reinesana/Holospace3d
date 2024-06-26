//
//  StoryListView.swift
//  holo swift
//
//  Created by Shana Kesia Nursoo on 2024-05-19.
//

import SwiftUI

struct StoryListView: View {
    
    let userImages = ["prof-1", "prof-2", "prof-3", "post-5", "prof-4"]
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack {
                AddStoryCard()
                ForEach(userImages, id: \.self) { imageName in
                    StoryCard(image: imageName)
                }
            }
        }
        .offset(x: 20)
        .padding(.top, 20)
    }
}

struct StoryListView_Previews: PreviewProvider {
    static var previews: some View {
        StoryListView()
    }
}

