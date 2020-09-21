//
//  ViewController.swift
//  PasswordHacker
//
//  Created by Shinya  on 2020/09/04.
//  Copyright © 2020 Shinya . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel1: UILabel!  //左から1番目
    @IBOutlet var resultLabel2: UILabel!  //左から2番目
    @IBOutlet var resultLabel3: UILabel!  //左から3番目
    @IBOutlet var resultLabel4: UILabel!  //左から4番目
    
    @IBOutlet var countLabel: UILabel!  //カウントを表示するラベル
    
    var password: Int = 1234
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func start(){
        for i in 0...9999 {
            
            countLabel.text = String(i)
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
            
            //passwordとiが一致したら
            if i == password{
                var digits = [Int]()
                
                for _ in 0...3{
                    digits.append(password % 10)
                    password = password / 10
                }
                
                resultLabel1.text = String(digits[0])
                resultLabel2.text = String(digits[1])
                resultLabel3.text = String(digits[2])
                resultLabel4.text = String(digits[3])
            }
        }
    }
    
    @IBAction func reset(){
        
        password = 1234

        countLabel.text = "「START」ボタンを押して解析開始"
        
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
    }

}

