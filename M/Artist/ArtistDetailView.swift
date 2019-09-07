//
//  ArtistDetailView.swift
//  M
//
//  Created by Zach Eriksen on 9/7/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI
import SF
import MediaPlayer
import Combine

struct ArtistDetailView: View {
    var artist: Artist
    @State private var songs: [Song] = []
    
    var body: some View {
        VStack {
            HStack {
                SF.person.image
                Text("\(artist.name ?? "...")")
            }
            .font(.largeTitle)
            SongListView(songs: songs)
        }
    }
}

//struct ArtistDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ArtistDetailView()
//    }
//}
