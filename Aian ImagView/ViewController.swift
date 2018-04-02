//
//  ViewController.swift
//  Aian ImagView
//
//  Created by D7703_16 on 2018. 4. 2..
//  Copyright © 2018년 D7703_16. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 1;
    var direction = 1;
    @IBOutlet weak var myimageview: UIImageView!
    @IBOutlet weak var index: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 첫번째 이미지를 로드함
        myimageview.image = UIImage(named:"frame1.png")
        index.text = "1"
    }
    
    @IBAction func imageUpdata(_ sender: Any) {
        
    if counter == 5 {
        direction = 0
        }
    else if counter == 1{
        direction = 1
        }
        if direction == 1{
            counter += 1;}
        else if direction == 0{
            counter = counter - 1
            }
        
        myimageview.image = UIImage(named: "frame\(counter).png")
        index.text = String(counter)
}
    
}
