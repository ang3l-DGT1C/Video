//
//  PlayerViewController.swift
//  Video
//
//  Created by Ángel González on 11/02/23.
//

import UIKit
import AVKit


class PlayerViewController: AVPlayerViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let laURL = URL(string:"https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")
                 /* SI LA URL ES LOCAL:
                  Bundle.main.url(forResource: "cat", withExtension: "wav") */
        else {
            print ("Ocurrio un error, no se encuentra el recurso")
            return
        }
        self.player = AVPlayer(url: laURL)
        player?.play()
    }

}
