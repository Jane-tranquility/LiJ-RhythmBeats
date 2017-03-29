//
//  AccountViewController.swift
//  RhythmBeats
//
//  Created by LiJing on 3/13/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import UIKit
import AVFoundation

class AccountViewController: UIViewController {

    @IBOutlet weak var user: UILabel!
    @IBOutlet weak var level: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var songPlayed: UITextView!
    
    var userName:String=""
    var backgroundAudio = try? AVAudioPlayer(contentsOf:URL(fileURLWithPath: Bundle.main.path(forResource: "ShapeOfYou", ofType: "mp3")!))
    
    override func viewWillAppear(_ animated: Bool){
        user.text=userName
        let account=accounts[userName]
        level.text=String(account!.level)
        score.text=String(account!.score)
        let arr=account!.songPlayed
        var textView=""
        for item in arr{
            textView+=item
            textView+="\n"
        }
        songPlayed.text=textView
        //backgroundAudio?.stop()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?){
        if let middle = segue.destination as? UINavigationController{
            if let target=middle.topViewController as? ListTableViewController{
                target.userName=userName
                target.backgroundAudio=backgroundAudio
            }
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
