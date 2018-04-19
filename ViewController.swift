//
//  ViewController.swift
//  0.2.0
//
//  Created by Ryan Leroux on 3/30/18.
//  Copyright © 2018 Ryan Leroux. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationController?.setNavigationBarHidden(true, animated: true); //removes nav bar
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func sighnIn(_sender: Any){
        
        let signIn = usernameTextField.text;
        let alert1 = UIAlertController(title: "No Text Inputed! Please Enter Username or Password to continue", message:nil, preferredStyle: UIAlertControllerStyle.alert)
        let Ok = UIAlertAction(title: "OK", style: .cancel) { (alert) -> Void in}
        
        if signIn?.isEmpty ?? true{
            alert1.addAction(Ok)
            present(alert1, animated: true, completion: nil)
        }
        
        //creates UIAlert
        let password =  passwordTextField.text;
        let alert2 = UIAlertController(title: "No Text Inputed! Please Eneter Password to continue", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        let Ok1 = UIAlertAction(title: "OK", style: .cancel) { (alert) -> Void in}
        
        //checks if password text field is empty
        if password?.isEmpty ?? true{
            alert2.addAction(Ok1)
            present(alert2, animated: true, completion: nil)
        }
        
    let MVC =
        self.storyboard?.instantiateViewController(withIdentifier: "MapView") as!
        MapView
        self.present(MVC, animated: true)
        
    }
        
    }

