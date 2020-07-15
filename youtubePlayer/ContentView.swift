//
//  ContentView.swift
//  youtubePlayer
//
//  Created by Anderson on 15/07/20.
//  Copyright © 2020 Flag. All rights reserved.
//

import SwiftUI
import youtube_ios_player_helper

struct ContentView: View {

    @State var currentVideoPlayedSecond: Float = 0

    var body: some View {

        VStack(spacing: 40) {
            YoutubePlayerView(secondsPlayed: $currentVideoPlayedSecond)
                .frame(height: 250)
                .background(Color.black)

            Text("Seconds played")
                .fontWeight(.bold)
            Text("\(currentVideoPlayedSecond)")

            Spacer()
        }
    }
}


#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
