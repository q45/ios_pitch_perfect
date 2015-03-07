//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Quintin Smith on 3/5/15.
//  Copyright (c) 2015 wasatch code. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    var receivedAudio:RecordAudio!

    override func viewDidLoad() {
        super.viewDidLoad()
//        if var filepath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
//            var filePathURL = NSURL.fileURLWithPath(filepath)
//            
//        } else {
//            println("I can't get the file")
//        }
        
        audioPlayer = AVAudioPlayer(contentsOfURL: receivedAudio.filePatURL, error: nil)
        audioPlayer.enableRate = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playSlowSound(sender: UIButton) {
        //TODO: Play slow sound when button is pressed
        audioPlayer.rate = 0.5
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }

    @IBAction func playFastSound(sender: UIButton) {
        audioPlayer.rate = 1.7
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }
    @IBAction func stopSounds(sender: UIButton) {
        audioPlayer.stop()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
