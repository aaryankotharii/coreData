//
//  ViewController.swift
//  coreDataPractice
//
//  Created by Aaryan Kothari on 09/02/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var mobileTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveClicked(_ sender: UIButton) {
        let dict = ["name":nameTextField.text,"address":addressTextField.text,"city":cityTextField.text,"mobile":mobileTextField.text]
        
        DataBaseHelper.shareInstance.save(object: dict as! [String : String])
    }
    
    
    @IBAction func showClicked(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(identifier: "dataViewController") as? dataViewController
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}

