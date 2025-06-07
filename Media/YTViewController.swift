//
//  YTViewController.swift
//  Media
//
//  Created by Ángel González on 07/06/25.
//

import UIKit
import YouTubeiOSPlayerHelper

class YTViewController: UIViewController {

    var ytPlayer: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ytPlayer = YTPlayerView()
        view.addSubview(ytPlayer)
        ytPlayer.translatesAutoresizingMaskIntoConstraints = false
        ytPlayer.topAnchor.constraint(equalTo:view.topAnchor, constant: 5).isActive = true
        ytPlayer.bottomAnchor.constraint(equalTo:view.bottomAnchor, constant: 5).isActive = true
        ytPlayer.trailingAnchor.constraint(equalTo:view.trailingAnchor, constant: 5).isActive = true
        ytPlayer.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 5).isActive = true
        //ytPlayer.load(withVideoId:"Mx5teLjNW4U")
        ytPlayer.load(withPlaylistId: "PL82FJ7Z5_wd5wzB_F8L12RnJBh5Gd8Pmw")
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
