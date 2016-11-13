//
//  AnswerViewController.swift
//  Pharos
//
//  Created by Michael Kolb on 11/12/16.
//  Copyright © 2016 Pharos. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class AnswerViewController: UIViewController {

    @IBOutlet weak var playerDummyView: UIView!
    @IBOutlet weak var questionBackView: UIView!
    @IBOutlet weak var questionLabel: UILabel!
    var player: AVPlayer!
    var playerController: AVPlayerViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let moviePath = Bundle.main.path(forResource: "mahmoud-bombs", ofType: "mov") {
            let url = URL(fileURLWithPath: moviePath)
            let item = AVPlayerItem(url: url)
            self.player = AVPlayer(playerItem: item)
            self.player.playImmediately(atRate: 1.0)
            self.playerController = AVPlayerViewController()
            self.playerController.player = self.player
            self.playerController.view.frame = playerDummyView.frame // at this point it's probably (0, 0, 1000, 1000)
            self.addChildViewController(playerController)
            self.view.addSubview(playerController.view)
        }
        
        questionLabel.text = "What is the best way to pass the boredom?"
    }

    override func viewDidLayoutSubviews() {
        // Resize the player to match the dummy after constraints are applied.
        self.playerController.view.frame = playerDummyView.frame
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        playerController = nil
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
