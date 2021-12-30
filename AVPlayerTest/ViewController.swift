//
//  ViewController.swift
//  AVPlayerTest
//
//  Created by Mika Urakawa on 2021/12/30.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    /// この関数の中で、playerをローカル変数として定義すると、再生されなくなる（再生前に変数が解放されてしまうためではないか）
    /// - seealso: https://llcc.hatenablog.com/entry/2017/08/02/220000
    @IBAction func playButtonTapped(_ sender: Any) {
        guard let sound = NSDataAsset(name: "rock") else {
            return
        }
        player = try? AVAudioPlayer(data: sound.data)
        player?.play()
    }
    
}

