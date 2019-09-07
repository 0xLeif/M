//
//  L1MusicView.swift
//  M
//
//  Created by Zach Eriksen on 9/6/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI
import MediaPlayer
import SF

struct MusicLabelView: View {
    var song: Song
    
    var body: some View {
        NavigationLink(destination: MusicDetailView(song: song)) {
            Text("\(song.title ?? "")")
        }
        
    }
}

//struct L1MusicView_Previews: PreviewProvider {
//    static var previews: some View {
//        L1MusicView()
//    }
//}
