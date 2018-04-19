//
//  RegisterView.swift
//  0.2.0
//
//  Created by Ryan Leroux on 3/30/18.
//  Copyright © 2018 Ryan Leroux. All rights reserved.
//

import UIKit

class RegisterView: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastnameTextField: UITextField!
    @IBOutlet weak var emailaddressTextField: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!
    @IBOutlet weak var retypePasswordTextField: UITextField!
    
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

    @IBAction func cancnelbuttonTapped(_ sender: Any) {
        print("its over")
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        
        //checks if firstname box is empty
        let firstname = firstNameTextField.text;
        let alert = UIAlertController(title: "No Text Inputed! Please Enter First Name to Create An Account", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        let Ok = UIAlertAction(title: "OK", style: .cancel) { (alert) -> Void in }
        
        if firstname?.isEmpty ?? true{
            alert.addAction(Ok)
            present(alert, animated: true, completion: nil)
        }
        
        //checks if lastname box is empty
        let lastname = lastnameTextField.text;
        let alert1 = UIAlertController(title: "No Text Inputed! Please Enter Last Name to Create An Account", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        let Ok1 = UIAlertAction(title: "OK", style: .cancel) { (alert) -> Void in }
        
        
        if lastname?.isEmpty ?? true{
            alert1.addAction(Ok1)
            present(alert1, animated: true, completion: nil)
        }
        
        
        //check if emailaddres box is empty
        let emailaddress = emailaddressTextField.text;
        let alert2 = UIAlertController(title: "No Text Inputed! Please Enter Email Address to Create An Account", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        let Ok2 = UIAlertAction(title: "OK", style: .cancel) { (alert) -> Void in }
        
        
        if emailaddress?.isEmpty ?? true{
            alert2.addAction(Ok2)
            present(alert2, animated: true, completion: nil)
        }
        
        //check if password box is empty
        let password = passWordTextField.text;
        let alert3 = UIAlertController(title: "No Text Inputed! Please Enter First Name to Create An Account", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        let Ok3 = UIAlertAction(title: "OK", style: .cancel) { (alert) -> Void in }
        
        
        if password?.isEmpty ?? true{
            alert3.addAction(Ok3)
            present(alert3, animated: true, completion: nil)
        }
        
        //check if repeatpassword box is empty
        let repeatpassword = retypePasswordTextField.text;
        let alert4 = UIAlertController(title: "No Text Inputed! Please Enter First Name to Create An Account", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        let Ok4 = UIAlertAction(title: "OK", style: .cancel) { (alert) -> Void in }
        
        
        if repeatpassword?.isEmpty ?? true{
            alert4.addAction(Ok4)
            present(alert4, animated: true, completion: nil)
        }
        
        let MVC =
            self.storyboard?.instantiateViewController(withIdentifier: "MapView") as!
        MapView
        self.present(MVC, animated: true)
        
        
    }
}
