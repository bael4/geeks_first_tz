//
//  ViewController.swift
//  constrains
//
//  Created by Баэль Рыспеков on 5/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.layer.backgroundColor = UIColor.white.cgColor
        button.layer.cornerRadius = 10
        
        loginButton.layer.cornerRadius = 10
    }
    

  
    
    
        


    
    @IBAction func loginButton(_ sender: Any) {
        
                let nameCount = nameTextField.text?.count
                let passwordCount =  passwordTextField.text?.count
        


                if nameCount! == 0 || nameCount! < 3 {
                  nameTextField.layer.borderWidth = 2
                    nameTextField.layer.borderColor = UIColor.red.cgColor
                 nameTextField.placeholder =  "пользователь не найден"
                }else{
                   nameTextField.layer.borderColor = UIColor.clear.cgColor
                }

                if passwordCount! == 0 || passwordCount! < 8  {
                    passwordTextField.layer.borderWidth = 2
                    passwordTextField.layer.borderColor = UIColor.red.cgColor
                    passwordTextField.placeholder = "слишком короткий пароль"
                }else{
                    passwordTextField.layer.borderColor = UIColor.clear.cgColor
                }
    
        
    }
    
}
