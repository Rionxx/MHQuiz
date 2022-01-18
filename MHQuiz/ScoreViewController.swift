//
//  ScoreViewController.swift
//  MHQuiz
//
//  Created by FX on 2022/01/16.
//

import UIKit
import AVFAudio

class ScoreViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    var player: AVAudioPlayer?
    
    var correct = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "\(correct)問正解!"
        
        //Audio Play
        if correct > 0 {
            if let soundURL = Bundle.main.url(forResource: "score", withExtension: "mp3") {
                do {
                    player = try AVAudioPlayer(contentsOf: soundURL)
                    player?.play()
                } catch {
                    print("error")
                }
            }
        } else {
            if let soundZeroURL = Bundle.main.url(forResource: "zero", withExtension: "mp3") {
                do {
                    player = try AVAudioPlayer(contentsOf: soundZeroURL)
                    player?.play()
                } catch {
                    print("error")
                }
            }
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func roTopButtonAction(_ sender: Any) {
        //close Score View and Quiz View
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true)
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
