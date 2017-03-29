//
//  StartMusicViewController.swift
//  RhythmBeats
//
//  Created by LiJing on 3/13/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import UIKit
import AVFoundation

class StartMusicViewController: UIViewController {
    @IBOutlet weak var songName: UILabel!

    var user:String=""
    var song:String=""
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var levelNum: UILabel!
    @IBOutlet weak var scoreNum: UILabel!
   
    @IBOutlet weak var button: UIButton!
    
    var objects1: [UILabel] = []
    var objects2: [UILabel] = []
    var objects3: [UILabel] = []
    var objects4: [UILabel] = []
    var dic1:[UILabel:Double]=[:]
    var dic2:[UILabel:Double]=[:]
    var dic3:[UILabel:Double]=[:]
    var dic4:[UILabel:Double]=[:]
    
    let optionsLinear = UIViewAnimationOptions.curveLinear

    
    var songAudio = try? AVAudioPlayer(contentsOf:URL(fileURLWithPath: Bundle.main.path(forResource: "ShapeOfYou", ofType: "mp3")!))
    
    func animateOne(sec:Double, startTime:Double, mode:Double){
        let label = UILabel()
        //label1=UILable()
        label.backgroundColor = UIColor.orange
        label.text = ""
        label.frame = CGRect(x: 115, y: 240, width: 20, height: 20)
        view.addSubview(label)
        objects1.append(label)
        dic1[label]=startTime+sec+mode
        UIView.animate(withDuration: mode,delay:sec, options: optionsLinear, animations: { label.frame = CGRect(x: 65, y: 640,width: 20, height: 20)
            //label1.removeFromSuperview()
        })
    }
    func animateTwo(sec:Double, startTime:Double, mode:Double){
        let label = UILabel()
        //label1=UILable()
        label.backgroundColor = UIColor.orange
        label.text = ""
        label.frame = CGRect(x: 175, y: 240, width: 20, height: 20)
        view.addSubview(label)
        objects2.append(label)
        dic2[label]=startTime+sec+mode
        UIView.animate(withDuration: mode,delay:sec, options: optionsLinear, animations: { label.frame = CGRect(x: 125, y: 640,width: 20, height: 20)
            //label1.removeFromSuperview()
        })
    }
    func animateThree(sec:Double, startTime:Double, mode:Double){
        let label = UILabel()
        //label1=UILable()
        label.backgroundColor = UIColor.orange
        label.text = ""
        label.frame = CGRect(x: 235, y: 240, width: 20, height: 20)
        view.addSubview(label)
        objects3.append(label)
        dic3[label]=startTime+sec+mode
        UIView.animate(withDuration: mode,delay:sec, options: optionsLinear, animations: { label.frame = CGRect(x: 185, y: 640,width: 20, height: 20)
            //label1.removeFromSuperview()
        })
    }
    func animateFour(sec:Double, startTime:Double, mode:Double){
        let label = UILabel()
        //label1=UILable()
        label.backgroundColor = UIColor.orange
        label.text = ""
        label.frame = CGRect(x: 295, y: 240, width: 20, height: 20)
        view.addSubview(label)
        objects4.append(label)
        dic4[label]=startTime+sec+mode
        UIView.animate(withDuration: mode,delay:sec, options: optionsLinear, animations: { label.frame = CGRect(x: 245, y: 640,width: 20, height: 20)
            //label1.removeFromSuperview()
        })
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        //let songAudio = try? AVAudioPlayer(contentsOf:URL(fileURLWithPath: Bundle.main.path(forResource: "CountingStars", ofType: "mp3")!))
        if (songAudio?.isPlaying==true){
            //dismiss(animated: true, completion: nil)
            songAudio?.stop()
            songAudio?.currentTime=0
            button.setTitle("Start",for:UIControlState.normal)
            for item in objects1{
                item.removeFromSuperview()
            }
            for item in objects2{
                item.removeFromSuperview()
            }
            for item in objects3{
                item.removeFromSuperview()
            }
            for item in objects4{
                item.removeFromSuperview()
            }
            objects1=[]
            objects2=[]
            objects3=[]
            objects4=[]
            dic1=[:]
            dic2=[:]
            dic3=[:]
            dic4=[:]
        }else{
            songAudio?.play()
            button.setTitle("Stop",for:UIControlState.normal)
            //let queue1 = DispatchQueue.global(qos: .userInitiated)
            //queue1.async{
                //self.canvas1.start1()
            //}
            //let queue2 = DispatchQueue.global(qos: .userInitiated)
            //queue2.async{
                //self.canvas2.start2()
            //}
            var new=false
            for item in (accounts[user]?.songPlayed)!{
                if item==song{
                    new=true
                    break
                }
            }
            if new==false{
                accounts[user]?.songPlayed.append(song)
            }
            
            /*let currentTime=NSDate()
            //levelNum.text=currentTime
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MM-dd-yyyy hh:mm:ss +zzzz"
            levelNum.text=dateFormatter.string(from: currentTime as Date)*/
            let currentTime = CACurrentMediaTime();
            //sleep(2)
            //let newTime=CACurrentMediaTime();
            //levelNum.text=String(newTime-currentTime)
            
            if song=="ThinkingOutLoud" {
                
                animateOne(sec:0.6,startTime: currentTime,mode:3)
                animateFour(sec:2.8,startTime: currentTime,mode:3)
                animateTwo(sec:4.3,startTime: currentTime,mode:3)
                animateOne(sec:7.6,startTime: currentTime,mode:3)
                animateThree(sec:8.8,startTime: currentTime,mode:3)
                animateTwo(sec:11.2,startTime: currentTime,mode:3)
                animateOne(sec:15,startTime: currentTime,mode:3)
                animateFour(sec:17.2,startTime: currentTime,mode:3)
                animateFour(sec:20,startTime: currentTime,mode:3)
                animateTwo(sec:21.7,startTime: currentTime,mode:3)
                animateThree(sec:24,startTime: currentTime,mode:3)
                animateFour(sec:27,startTime: currentTime,mode:3)
                animateOne(sec:30,startTime: currentTime,mode:3)
                animateOne(sec:33,startTime: currentTime,mode:3)
                animateThree(sec:35,startTime: currentTime,mode:3)
                animateOne(sec:38,startTime: currentTime,mode:3)
                animateFour(sec:41,startTime: currentTime,mode:3)
                animateFour(sec:43.8,startTime: currentTime,mode:3)
                animateOne(sec:46,startTime: currentTime,mode:3)
                animateThree(sec:57.8,startTime: currentTime,mode:3)
                animateTwo(sec:51.5,startTime: currentTime,mode:3)
                animateOne(sec:55,startTime: currentTime,mode:3)
                animateTwo(sec:57,startTime: currentTime,mode:3)
                animateFour(sec:60.2,startTime: currentTime,mode:3)
            }else if song=="CountingStars"{
                animateOne(sec:0.6,startTime: currentTime,mode:2)
                animateFour(sec:2.8,startTime: currentTime,mode:2)
                animateTwo(sec:4.3,startTime: currentTime,mode:2)
                animateOne(sec:7.6,startTime: currentTime,mode:2)
                animateThree(sec:8.8,startTime: currentTime,mode:2)
                animateTwo(sec:11.2,startTime: currentTime,mode:2)
                animateOne(sec:15,startTime: currentTime,mode:2)
                animateFour(sec:17.2,startTime: currentTime,mode:2)
                animateFour(sec:20,startTime: currentTime,mode:2)
                animateTwo(sec:21.7,startTime: currentTime,mode:2)
                animateThree(sec:24,startTime: currentTime,mode:2)
                animateFour(sec:27,startTime: currentTime,mode:2)
                animateOne(sec:30,startTime: currentTime,mode:2)
                animateOne(sec:33,startTime: currentTime,mode:2)
                animateThree(sec:35,startTime: currentTime,mode:2)
                animateOne(sec:38,startTime: currentTime,mode:2)
                animateFour(sec:41,startTime: currentTime,mode:2)
                animateFour(sec:43.8,startTime: currentTime,mode:2)
                animateOne(sec:46,startTime: currentTime,mode:2)
                animateThree(sec:57.8,startTime: currentTime,mode:2)
                animateTwo(sec:51.5,startTime: currentTime,mode:2)
                animateOne(sec:55,startTime: currentTime,mode:2)
                animateTwo(sec:57,startTime: currentTime,mode:2)
                animateFour(sec:60.2,startTime: currentTime,mode:2)
            }else if song=="StressedOut"{
                animateOne(sec:0.6,startTime: currentTime,mode:1)
                animateFour(sec:2.8,startTime: currentTime,mode:1)
                animateTwo(sec:4.3,startTime: currentTime,mode:1)
                animateOne(sec:7.6,startTime: currentTime,mode:1)
                animateThree(sec:8.8,startTime: currentTime,mode:1)
                animateTwo(sec:11.2,startTime: currentTime,mode:1)
                animateOne(sec:15,startTime: currentTime,mode:1)
                animateFour(sec:17.2,startTime: currentTime,mode:1)
                animateFour(sec:20,startTime: currentTime,mode:1)
                animateTwo(sec:21.7,startTime: currentTime,mode:1)
                animateThree(sec:24,startTime: currentTime,mode:1)
                animateFour(sec:27,startTime: currentTime,mode:1)
                animateOne(sec:30,startTime: currentTime,mode:1)
                animateOne(sec:33,startTime: currentTime,mode:1)
                animateThree(sec:35,startTime: currentTime,mode:1)
                animateOne(sec:38,startTime: currentTime,mode:1)
                animateFour(sec:41,startTime: currentTime,mode:1)
                animateFour(sec:43.8,startTime: currentTime,mode:1)
                animateOne(sec:46,startTime: currentTime,mode:1)
                animateThree(sec:57.8,startTime: currentTime,mode:1)
                animateTwo(sec:51.5,startTime: currentTime,mode:1)
                animateOne(sec:55,startTime: currentTime,mode:1)
                animateTwo(sec:57,startTime: currentTime,mode:1)
                animateFour(sec:60.2,startTime: currentTime,mode:1)
            }
            
        }
        
    }
    
    @IBAction func buttonOnePressed(_ sender: UIButton) {
        let pressTime = CACurrentMediaTime();
        for (_,reachTime) in dic1{
            let abosolute=abs(pressTime-reachTime)
            updateScore(abosoluteValue:abosolute)
            updateLevel()
            
        }
    }
    @IBAction func buttonTwoPressed(_ sender: UIButton) {
        let pressTime = CACurrentMediaTime();
        for (_,reachTime) in dic2{
            let abosolute=abs(pressTime-reachTime)
            updateScore(abosoluteValue:abosolute)
            updateLevel()
            
        }
    }
    @IBAction func buttonThreePressed(_ sender: UIButton) {
        let pressTime = CACurrentMediaTime();
        for (_,reachTime) in dic3{
            let abosolute=abs(pressTime-reachTime)
            updateScore(abosoluteValue:abosolute)
            updateLevel()
            
        }
    }
    @IBAction func buttonFourPressed(_ sender: UIButton) {
        let pressTime = CACurrentMediaTime();
        for (_,reachTime) in dic4{
            let abosolute=abs(pressTime-reachTime)
            updateScore(abosoluteValue:abosolute)
            updateLevel()
            
        }
    }
    
    func updateScore(abosoluteValue:Double){
        let account=accounts[user]
        if abosoluteValue<0.1{
            account!.score+=10
        }else if abosoluteValue<0.2{
            account!.score+=5
        }else if abosoluteValue<0.3{
            account!.score+=2
        }
        scoreNum.text=String(account!.score)
    }
    
    func updateLevel(){
        let account=accounts[user]
        if account!.score>=500 {
            account!.level=5
        }else if account!.score>=400 {
            account!.level=4
        }else if account!.score>=300 {
            account!.level=3
        }else if account!.score>=200 {
            account!.level=2
        }else if account!.score>=100 {
            account!.level=1
        }
        levelNum.text=String(account!.level)
    }
    
    override func viewWillAppear(_ animated: Bool){
        userName.text=user
        let account=accounts[user]
        levelNum.text=String(account!.level)
        scoreNum.text=String(account!.score)
        songName.text=song
        //canvas1.start1()
        //canvas2.start2()
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
