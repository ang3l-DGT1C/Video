//
//  VideoViewController.swift
//  Video
//
//  Created by Ángel González on 11/02/23.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let avpvc = AVPlayerViewController()
        guard let laURL = URL(string:"https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")
                 /* SI LA URL ES LOCAL:
                  Bundle.main.url(forResource: "cat", withExtension: "wav") */
        else {
            print ("Ocurrio un error, no se encuentra el recurso")
            return
        }
        avpvc.player = AVPlayer(url: laURL)
        /*// todas las clases que heredan de UIViewController, tienen este método para mostrar otro ViewController
        self.present(avpvc, animated: true)*/
        
        // agregamos la vista del videoplayer como una subvista en la vista actual, para poder controlar su tamaño
        self.view.addSubview(avpvc.view)
        avpvc.view.frame = self.view.bounds.inset(by: UIEdgeInsets(top: 50, left: 0, bottom: 400, right: 70))
        // agregamos el controller correspondiente al videoplayer, para que las acciones de los controles de reproducción sigan funcionando
        self.addChild(avpvc)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
