//
//  RegisterViewController.swift
//  RhythmBeats
//
//  Created by LiJing on 3/12/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var rePassword: UITextField!

    @IBAction func editEnded(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    @IBAction func editEned2(_ sender: UITextField) {
    }
    @IBAction func EditEnded3(_ sender: UITextField) {
    }
    
    @IBAction func segmentedPressed(_ sender: UISegmentedControl) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func register(_ sender: UIButton) {
        let userNameLocal=userName.text!
        let passwordLocal=password.text!
        let rePasswordLocal=rePassword.text!
        if userNameLocal.isEmpty {
            alert(m:"Please enter an user name")
        }else if passwordLocal.isEmpty{
            alert(m:"Please enter your password!")
        }else if rePasswordLocal.isEmpty{
            alert(m:"Please re-enter your password!")
        }else{
            if let old=accounts[userNameLocal]{
                alert(m:"The user name has been taken, please choose another one!")
                userName.text=""
                password.text=""
                rePassword.text=""
            }else{
                if passwordLocal==rePasswordLocal {
                    accounts[userNameLocal]=Account(userName:userNameLocal, password:passwordLocal)
                    let message="Registration has succeeded. Please log in using your user name and password. Thanks"
                    let title="Confirmation:"
                    let alertController=UIAlertController(title: title, message:message, preferredStyle:.alert)
                    let alertAction=UIAlertAction(title:"Got it!", style: .default){action in
                        self.dismiss(animated: true, completion: nil)
                    }
                    alertController.addAction(alertAction)
                    present(alertController, animated:true, completion: nil)
                }else{
                    alert(m:"Please make sure your password for both passwor and re-enter password sections are the same!")
                    password.text=""
                    rePassword.text=""
                }
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
        segmentedControl.selectedSegmentIndex=1
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
