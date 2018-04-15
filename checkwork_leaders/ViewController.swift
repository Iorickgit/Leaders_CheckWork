//
//  ViewController.swift
//  checkwork_leaders
//
//  Created by 南伊織 on 2018/04/15.
//  Copyright © 2018年 RigCrunch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    var wordArray: [String] = ["ぶどう","なし","りんご","いちご"]
    var index: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = wordArray[index]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func next(){
        index = index + 1
        if index == 4{
            index = 0
        }
        label.text = wordArray[index]
    }

    @IBAction func back(){
        index = index - 1
        if index <= 0{
            index = 3
        }
        label.text = wordArray[index]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

