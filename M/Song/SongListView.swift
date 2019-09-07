//
//  ContentView.swift
//  M
//
//  Created by Zach Eriksen on 9/6/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI
import MediaPlayer

struct SongListView: View {
    var songs: [Song] = []
    
    var body: some View {
        
        NavigationView {
            List(songs, id: \.self) { song in
                MusicLabelView(song: song)
            }
            .navigationBarTitle("Songs")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SongListView()
    }
}
