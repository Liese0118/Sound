//
//  ViewController.swift
//  Sound
//
//  Created by Liese Uriu on 2019/11/12.
//  Copyright © 2019 Liese Uriu. All rights reserved.
//

import UIKit
import AVFoundation //音楽をならしたいときに必要

class ViewController: UIViewController {
    //MainStoryboardで作成したボタンをコードでも扱えるように
    @IBOutlet var button: UIButton!
    //音楽をならす源の役割を担う
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tapbeginButton(){
        let path = Bundle.main.path(forResource: "guitar", ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        audioPlayer = try! AVAudioPlayer(contentsOf: url)
        audioPlayer.play()
        
        //ぼボタンが押されている間は写真が猫になる
        button.setImage(UIImage(named:"musician_cat.png"), for: .normal)
        
        print("tap begin")
        
    }
    @IBAction func tapEndButton(){
        button.setImage(UIImage(named:"guitar.png"), for: .normal)
         print("tap end")
    }
    
   


}

