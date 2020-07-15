//
//  ContentView.swift
//  youtubePlayer
//
//  Created by Anderson on 15/07/20.
//  Copyright © 2020 Flag. All rights reserved.
//

import SwiftUI
import youtube_ios_player_helper

struct YoutubePlayerView: UIViewRepresentable {
    typealias UIViewType = YTPlayerView

    @Binding var secondsPlayed: Float

    func makeUIView(context: Context) -> YTPlayerView {
        let playerView = YTPlayerView()
        playerView.load(
            withVideoId: "bsM1qdGAVbU",
            playerVars: ["playsinline":1]
        )
        playerView.delegate = context.coordinator
        return playerView
    }

    func updateUIView(_ uiView: YTPlayerView, context: Context) {

    }

    func makeCoordinator() -> Coordinator{
        Coordinator(self)
    }

    class Coordinator: NSObject, YTPlayerViewDelegate {
        var player: YoutubePlayerView

        init(_ youtubePlayerView: YoutubePlayerView){
            self.player = youtubePlayerView
        }

        // MARK:- YTPlayerViewDelegate
        func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
//            playerView.playVideo()
        }

        func playerView(_ playerView: YTPlayerView, didPlayTime playTime: Float) {
            player.secondsPlayed = playTime
        }
    }
}
