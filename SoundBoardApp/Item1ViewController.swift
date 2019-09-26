//
//  Item1Controller.swift
//  SoundBoardApp
//
//  Created by Felix on 11/09/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit
import AVFoundation

class Item1ViewController: UIViewController {
    

    var audioPlayer = AVAudioPlayer()
    var cashSound: Int = 0
    var gunSound: Int = 0
    var hornSound: Int = 0
    var runSound: Int = 0

    @IBAction func PlaySound(_ sender: UIButton) {
        
        //arrays holding different sound effect names
        let cashList = ["CASH1", "CASH2", "CASH3", "CASH4"]
        let gunList = ["GUN1", "GUN2", "GUN3", "GUN4"]
        let hornList = ["HORN1", "HORN2"]
        let runList = ["RUN1", "RUN2", "RUN3", "RUN4"]
        
        var soundName = ""
        
        
        
        if sender.tag > 0
        {
            if sender.tag == 1
            {
            soundName = hornList[hornSound]
            hornSound += hornSound + 1
                           
                if hornSound >= hornList.count
                {
                    hornSound = 0
                }
            }
               
            else if sender.tag == 2
            {
                soundName = cashList[cashSound]
                cashSound += cashSound + 1
                if cashSound >= cashList.count
                     {
                        cashSound = 0
                     }
            }
            else if sender.tag == 3
                       {
                        soundName = gunList[gunSound]
                        gunSound += gunSound + 1
                        if gunSound >= gunList.count
                                {
                                    gunSound = 0
                                }
                }
            else if sender.tag == 4
                       {
                        soundName = runList[runSound]
                        runSound += runSound + 1
                        if runSound >= runList.count
                                {
                                    runSound = 0
                                    
                                }
        }
    }
        
        
        // Gets the sound resource
        if let soundResource = Bundle.main.url(forResource: soundName , withExtension: "mp3") {
            do {
                // Think of this as putting CD in a CD player
                audioPlayer = try AVAudioPlayer(contentsOf: soundResource)
                
                // Plays the sound file
                audioPlayer.play()
            } catch  {
                // Catches any errors that might occur while putting the CD in the CD player
                print(error)
            }
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    


}

}
