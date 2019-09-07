//
//  ArtistListView.swift
//  M
//
//  Created by Zach Eriksen on 9/7/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI
import MediaPlayer

struct Artist: Hashable {
    var item: MPMediaItem
    var songs: [Song] = []
    
    var name: String? {
        item.artist
    }
}

struct ArtistListView: View {
    var artists: [Artist] = []
    
    var body: some View {
        NavigationView {
            List(artists, id: \.self) { artist in
                ArtistLabelView(artist: artist)
            }
        }
        
    }
}

struct ArtistListView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistListView()
    }
}
