//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Quintin Smith on 3/5/15.
//  Copyright (c) 2015 wasatch code. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        //Hide the stop button
        stopButton.hidden = true
        recordButton.enabled = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        recordingInProgress.hidden = false
        //TODO: Record the user's voice
        recordButton.enabled = false
        stopButton.hidden = false
        println("in recordAudio")
        
        
    }

    @IBAction func stopAudio(sender: UIButton) {
        //TODO: Stop Recording when button is pressed
        recordingInProgress.hidden = true
        stopButton.hidden = true
        recordButton.enabled = true
        
    }
}

