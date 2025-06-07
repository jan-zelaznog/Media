//
//  ViewController.swift
//  Media
//
//  Created by Ángel González on 07/06/25.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    let mPlayer = MediaPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let stopBtn = UIButton(type: .custom)
        stopBtn.setImage(UIImage(systemName: "stop.circle"), for: .normal)
        stopBtn.frame = CGRect(x: 30, y: 80, width:60, height: 60)
        self.view.addSubview(stopBtn)
        stopBtn.addTarget(self, action:#selector(stopBtnTouch), for: .touchUpInside)
        view.addSubview(stopBtn)
        
        let vidBtn = UIButton(type: .custom)
        vidBtn.setImage(UIImage(systemName: "photo.circle"), for: .normal)
        vidBtn.frame = CGRect(x: 300, y: 380, width:60, height: 60)
        self.view.addSubview(stopBtn)
        vidBtn.addTarget(self, action:#selector(vidBtnTouch), for: .touchUpInside)
        view.addSubview(vidBtn)
        
        let ytBtn = UIButton(type: .custom)
        ytBtn.setImage(UIImage(systemName: "play.rectangle"), for: .normal)
        ytBtn.frame = CGRect(x: 300, y: 430, width:60, height: 60)
        self.view.addSubview(ytBtn)
        ytBtn.addTarget(self, action:#selector(ytBtnTouch), for: .touchUpInside)
        ytBtn.tintColor = .red
        view.addSubview(ytBtn)
    }

    @objc
    func ytBtnTouch () {
        let ytvc = YTViewController()
        self.present(ytvc, animated: true)
    }
    
    @objc
    func vidBtnTouch () {
        //if let url = Bundle.main.url(forResource:"tren", withExtension:"mp4") {
        if let url = URL(string: "https://www.youtube.com/watch?v=DoyA619L9MQ") {
            let avpc = AVPlayerViewController()
            avpc.player = mPlayer.playVideo(withURL: url)
            self.present(avpc, animated: true)
        }
    }
    
    @objc
    func stopBtnTouch () {
        mPlayer.stopSound()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let url = Bundle.main.url(forResource:"1", withExtension:"mp3") {
            mPlayer.playSound(withURL: url)
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        mPlayer.stopSound()
    }
}

