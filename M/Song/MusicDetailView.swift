//
//  MusicDetailView.swift
//  M
//
//  Created by Zach Eriksen on 9/6/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI
import SF

struct MusicDetailView: View {
    var song: Song
    
    var songMinutesDuration: Int {
        Int(song.item.playbackDuration) / 60
    }
    
    var songSecondsDuration: Int {
        Int(((song.item.playbackDuration / 60) - Double(songMinutesDuration)) * 60)
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment: .leading, spacing: 4) {
                song.title.map {
                    Text($0)
                        .bold()
                        .font(.largeTitle)
                }
                song.artist.map { artist in
                    HStack {
                        Text(artist)
                    }
                    .font(.title)
                }
                HStack {
                    song.albumTitle.map { title in
                        HStack {
                            SF.folder.image
                            Text(title)
                        }
                    }
                    Spacer()
                    song.releaseDate.map { date in
                        Text("\(date)")
                    }
                }
                song.genre.map {
                    Text($0)
                }
                Text("\(songMinutesDuration) Minutes and \(songSecondsDuration) Seconds")
                HStack {
                    SF.play_circle.image
                    Text("\(song.item.playCount)")
                }
                HStack {
                    SF.forward.image
                    Text("\(song.item.skipCount)")
                }
                Spacer()
            }
            .font(.body)
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   alignment: .topLeading)
                .padding()
        }
    }
}

//struct MusicDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        MusicDetailView()
//    }
//}
