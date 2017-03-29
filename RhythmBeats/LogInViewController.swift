//
//  LogInViewController.swift
//  RhythmBeats
//
//  Created by LiJing on 3/12/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import UIKit
import AVFoundation

class LogInViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func editEnded(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    @IBAction func editEnded2(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
   
    @IBAction func unwindToLogIn(_ segue : UIStoryboardSegue){
        userName.text=""
        password.text=""
    }
    
    var backgroundAudio = try? AVAudioPlayer(contentsOf:URL(fileURLWithPath: Bundle.main.path(forResource: "ShapeOfYou", ofType: "mp3")!))
    
    @IBAction func Login(_ sender: UIButton) {
        if userName.text!.isEmpty {
            alert(m:"Please enter an user name")
        }else if password.text!.isEmpty{
            alert(m:"Please enter your password!")
        }else {
            if let old=accounts[userName.text!] {
                if old.password==password.text! {
                    let storyboard:UIStoryboard=UIStoryboard(name:"Main",bundle:nil)
                    let vc:AccountViewController=storyboard.instantiateViewController(withIdentifier: "accountView") as! AccountViewController
                    vc.userName=userName.text!
                    vc.backgroundAudio=backgroundAudio
                    //backgroundAudio?.stop()
                    self.present(vc, animated: true, completion: nil)
                }else{
                    alert(m:"Your password doesn't match your user name. Please try it again!")
                    userName.text=""
                    password.text=""
                }
            }else{
                alert(m:"Your user name does not exist. Please make sure it's correct, or register a new one!")
                userName.text=""
                password.text=""
            }
        }
        
    }
    
    func alert(m:String){
        let message=m
        let title="Alert:"
        let alertController=UIAlertController(title: title, message:message, preferredStyle:.alert)
        let alertAction=UIAlertAction(title:"Got it!", style: .cancel, handler:nil)
        alertController.addAction(alertAction)
        present(alertController, animated:true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool){
        segmentedControl.selectedSegmentIndex=0
        backgroundAudio?.play()
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
