//
//  ArtistLabelView.swift
//  M
//
//  Created by Zach Eriksen on 9/7/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI

struct ArtistLabelView: View {
    var artist: Artist
    
    var body: some View {
        NavigationLink(destination: ArtistDetailView(artist: artist)) {
            VStack {
                artist.name.map(Text.init)
            }
        }
        
    }
}

//struct ArtistLabelView_Previews: PreviewProvider {
//    static var previews: some View {
//        ArtistLabelView()
//    }
//}
