//
//  ViewController.swift
//  Fortune Telling
//
//  Created by 熊谷優 on 2015/07/17.
//  Copyright (c) 2015年 igue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //動物の絵文字を表示させるラベルの変数
    @IBOutlet var animalLabel: UILabel!
    //占い結果を表示させるラベルの定数
    @IBOutlet var resultLabel:UILabel!
    
    @IBOutlet weak var takabe: UIImageView!
    //占いのロジックを記述するメソッド
    @IBAction func tellFortune(){
        takabe.hidden = true
        //乱数の発生
        let randNum = Int(arc4random_uniform(7))
        //分岐
        if randNum == 0 {
            animalLabel.text = "🐶"
            resultLabel.text = "大吉だワン!"
        }else if(randNum == 1){
            animalLabel.text = "🐱"
            resultLabel.text = "中吉だニャー!"
        }else if(randNum == 2){
            animalLabel.text = "🐴"
            resultLabel.text = "吉だヒヒーン!"
        }else if(randNum == 3){
            animalLabel.text = "🐮"
            resultLabel.text = "末吉だモー!"
        }else if(randNum == 4){
            animalLabel.text = "🐘"
            resultLabel.text = "凶だゾウ!"
        }else if(randNum == 5){
            animalLabel.text = "🐯"
            resultLabel.text = "大凶だガオー!"
        }else if(randNum == 6){
            animalLabel.text = ""
            resultLabel.text = "?!"
            takabe.hidden = false
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        takabe.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

