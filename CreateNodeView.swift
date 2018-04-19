//
//  CreateNodeView.swift
//  0.2.0
//
//  Created by Ryan Leroux on 3/30/18.
//  Copyright © 2018 Ryan Leroux. All rights reserved.
//

import UIKit

class CreateNodeView: UIViewController, UITextFieldDelegate{

    //tittle text field
    @IBOutlet weak var TitleTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TitleTextField.delegate = self
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func CreateLoction(_ sender: UIButton)
    {
        let mv = storyboard?.instantiateViewController(withIdentifier: "MapView") as! MapView
        mv.nodetitle = TitleTextField.text! //sets node title in mapview
        self.navigationController?.pushViewController(mv, animated: true)
    }
   

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        TitleTextField.resignFirstResponder()
        return false
    }


}
