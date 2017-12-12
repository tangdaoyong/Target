//
//  ViewController.swift
//  SwiftTarget
//
//  Created by 唐道勇 on 2017/12/8.
//  Copyright © 2017年 唐道勇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*
         build Settings -> Other Swift Flags ->Debug
         添加SWIFTTWO宏定义：
         $(inherited)
         -D
         SWIFTTWO
         */
        #if DEBUG
            print("DEBUG文件名:\(#file)")
        #endif
        
        #if SWIFTONE
            print("SWIFTONE文件名:\(#file)")
            self.view.backgroundColor = .blue
        #endif
        
        #if SWIFTTWO
            print("SWIFTONE文件名:\(#file)")
            self.view.backgroundColor = UIColor.green
        #endif
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

