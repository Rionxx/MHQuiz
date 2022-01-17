//
//  ViewController.swift
//  MHQuiz
//
//  Created by FX on 2022/01/15.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //start Button Action Sound
    @IBAction func startButtonAction(_ sender: Any) {
        if let soundStart = Bundle.main.url(forResource: "soundstart", withExtension: "mp3") {
            do {
                player = try AVAudioPlayer(contentsOf: soundStart)
                player?.play()
            } catch {
                print("error")
            }
        }
    }
    
}

