//
//  ViewController.swift
//  bootcamp3
//
//  Created by Mürşide Gökçe on 22.09.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func butonAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "başlık", message: "mesaj", preferredStyle: .alert)
        
        
        let iptal = UIAlertAction(title: "iptal", style: .cancel){ action in print("iptal")}
        let tamam = UIAlertAction(title:"tamam", style: . destructive){ action in print("tamam")}
        
        alertController.addAction(iptal)
        alertController.addAction(tamam)
        
        self.present(alertController,animated: true)
        
    }
    
    @IBAction func butonAction(_ sender: Any) {
        
        let alertController = UIAlertController(title: "başlık", message: "mesaj", preferredStyle: .actionSheet)
        
        
        let iptal = UIAlertAction(title: "iptal", style: .cancel){ action in print("iptal")}
        let tamam = UIAlertAction(title:"tamam", style: . destructive){ action in print("tamam")}
        
        alertController.addAction(iptal)
        alertController.addAction(tamam)
        
        self.present(alertController,animated: true)
        
    }
    @IBAction func butonOzel(_ sender: Any) {
        
        let alertController = UIAlertController(title: "başlık", message: "mesaj", preferredStyle: .alert)
        
        alertController.addTextField{
            textfield in
            textfield.placeholder = "veri giriniz"
            textfield.keyboardType = .numberPad
            textfield.isSecureTextEntry = true
            
        }
        
        alertController.addTextField()
        
        let tamam = UIAlertAction(title:"kaydet", style: . destructive){ action in
            let tf = alertController.textFields![0] as UITextField
            let tf1 = alertController.textFields![1] as UITextField
            if let alinan = tf.text,let alinan1 = tf1.text{
                print("\(alinan), \(alinan1) alındı")
                
            }
            
            
            }
        
     
        alertController.addAction(tamam)
        
        self.present(alertController,animated: true)
        
    }
}

