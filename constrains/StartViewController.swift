//
//  ViewController.swift
//  constrains
//
//  Created by Баэль Рыспеков on 5/3/23.
//

import UIKit
import SnapKit


class StartViewController: UIViewController {
    

    private let logoIV: UIImageView = {
        
        let logoImage =  UIImageView()
        logoImage.image = UIImage(named: "logo")
        return logoImage
        
    }()
  
    private let Label: UILabel = {
        let label = UILabel()
        label.text = "Вход"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    private let nameTextField: UITextField = {
        
        let tf = UITextField()
        let bc = UIColor(cgColor: CGColor(red:0, green:114, blue:225, alpha:0.04))
        
        tf.placeholder = "Name"
        tf.backgroundColor = UIColor(cgColor: CGColor(red:0, green:114, blue:225, alpha:0.04))
        tf.layer.borderColor = bc.cgColor
        tf.layer.cornerRadius = 6
        tf.layer.borderWidth = 2
       
        let spacerView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        tf.leftView = spacerView
        tf.leftViewMode = .always
        return tf
    }()
    private let nameTextField2: UITextField = {
        let tf = UITextField()
        let rgbaBorder = UIColor(cgColor: CGColor(red:0, green:114, blue:225, alpha:0.04))
        tf.placeholder = "Name"
        tf.backgroundColor = UIColor(cgColor: CGColor(red:0, green:114, blue:225, alpha:0.04))
        tf.layer.borderColor =  rgbaBorder.cgColor
        tf.layer.cornerRadius = 6
        tf.layer.borderWidth = 4
        let spacerView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        tf.leftView = spacerView
        tf.leftViewMode = .always
        return tf
    }()
    
    private let loginButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.layer.backgroundColor = UIColor(red: 0, green: 0.447, blue: 0.882, alpha: 1).cgColor
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 6
        return button
    }()
    
    private let Button: UIButton = {
        
        let button = UIButton()
        let rgbaBlue = UIColor(cgColor: CGColor(red: 0, green: 0.447, blue: 0.882, alpha: 1))
        button.setTitle("Login", for: .normal)
        button.setTitleColor(rgbaBlue, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        button.layer.borderColor = rgbaBlue.cgColor
        button.layer.cornerRadius = 6
        button.layer.borderWidth = 1
  
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        initUI()
        
    
    }
    

  
    
    
        
    private func initUI (){
        
        [logoIV,Label,nameTextField, nameTextField2, loginButton, Button].forEach { box in
                 view.addSubview(box)
             }
        constraint()
        initAction()
    }

    
    
    private func constraint (){
        
        logoIV.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(64)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(120)
            
            }
        
        Label.snp.makeConstraints { make in
            make.top.equalTo(logoIV.snp.bottom).offset(62)
            make.leading.equalToSuperview().offset(32)
            
            nameTextField.snp.makeConstraints { make in
                make.top.equalTo(Label.snp.bottom).offset(16)
                make.left.equalToSuperview().offset(20)
                make.leading.trailing.equalToSuperview().inset(20)
                make.height.equalTo(44)
            }
            
            nameTextField2.snp.makeConstraints { make in
                make.top.equalTo(nameTextField.snp.bottom).offset(31)
                make.left.equalToSuperview().offset(20)
                make.leading.trailing.equalToSuperview().inset(20)
                make.height.equalTo(44)
            }
            
           loginButton.snp.makeConstraints { make in
                make.top.equalTo(nameTextField2.snp.bottom).offset(50)
                make.left.equalToSuperview().offset(20)
                make.leading.trailing.equalToSuperview().inset(20)
                make.height.equalTo(50)
            }
            
           Button.snp.makeConstraints { make in
                 make.top.equalTo(loginButton.snp.bottom).offset(13)
                 make.left.equalToSuperview().offset(20)
                 make.leading.trailing.equalToSuperview().inset(20)
                 make.height.equalTo(50)
             }
            
            
        }
    }
  
    
    private func initAction(){
        loginButton.addTarget(self, action: #selector(loginButton(_ :)), for: .touchUpInside)
    }
    
    @objc func loginButton(_ sender: UIButton){
        
        let nameCount = nameTextField.text?.count
        let passwordCount =  nameTextField2.text?.count



        if nameCount! == 0 || nameCount! < 3 {
          nameTextField.layer.borderWidth = 2
            nameTextField.layer.borderColor = UIColor.red.cgColor
         nameTextField.placeholder =  "пользователь не найден"
        }else{
           nameTextField.layer.borderColor = UIColor.clear.cgColor
        }

        if passwordCount! == 0 || passwordCount! < 8 {
            nameTextField2.layer.borderWidth = 2
              nameTextField2.layer.borderColor = UIColor.red.cgColor
           nameTextField2.placeholder =  "пользователь не найден"
        }else{
            nameTextField2.layer.borderColor = UIColor.clear.cgColor
        }
    }
    
}


