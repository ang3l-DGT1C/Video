//
//  ViewController.swift
//  Video
//
//  Created by Ángel González on 11/02/23.
//

import UIKit
import YouTubeiOSPlayerHelper

class ViewController: UIViewController {

    let yutuPlayer = YTPlayerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(yutuPlayer)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //yutuPlayer.load(withVideoId:"p5IuRLOer6E")
        yutuPlayer.load(withPlaylistId:"PLlT0ph_Ig5Rc8xVBw47aZfLsOGw-lxRWb")
    }

    override func viewWillLayoutSubviews() {
        yutuPlayer.translatesAutoresizingMaskIntoConstraints=false
        yutuPlayer.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        yutuPlayer.widthAnchor.constraint(equalToConstant: 320).isActive = true
        yutuPlayer.heightAnchor.constraint(equalToConstant: 240).isActive = true
        yutuPlayer.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }
}

