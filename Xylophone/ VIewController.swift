//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var player: AVAudioPlayer!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


    func soundplay(note : String){
        
        let soundUrl=Bundle.main.url(forResource : note, withExtension: "wav")!
        do{
            try player = AVAudioPlayer(contentsOf:soundUrl)
            
        } catch {
            print(error)
            
        }
        
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        var x : String = ""
        
        switch sender.tag {
        case 1 : x = "note1"
        case 2 : x = "note2"
        case 3 : x = "note3"
        case 4 : x = "note4"
        case 5 : x = "note5"
        case 6 : x = "note6"
        case 7 : x = "note7"
        default: x = "note1"
            
        }
//        if sender.tag==1{
//            x = 1
//        }
//        else if sender.tag==2{
//            x = 2
//        }
//        else if sender.tag==3{
//            x = 3
//        }
//        else if sender.tag==4{
//            x = 4
//        }
//        else if sender.tag==5{
//            x = 5
//        }
//        else if sender.tag==6{
//            x = 6
//        }
//        else if sender.tag==7{
//            x = 7
//        }
        
        soundplay(note: x)
        player.play();
    
    }
    
  

}

