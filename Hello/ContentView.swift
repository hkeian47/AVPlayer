//
//  ContentView.swift
//  Hello
//
//  Created by Hana Keinan on 3/29/22.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @State var player = AVPlayer()
    var videoURL = URL(string: "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_1920_18MG.mp4")
                       
    var body: some View {
    
        VideoPlayer(player: player)
            .ignoresSafeArea()
            .onAppear{
                player = AVPlayer(url:videoURL!)
            }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
