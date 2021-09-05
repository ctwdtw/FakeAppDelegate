//
//  ViewController.swift
//  FakeAppDelegate
//
//  Created by Paul Lee on 2021/9/4.
//

import UIKit

public class Logger {
    static var shared = Logger()
    //private init() {}
    
    public func log(_ message: String) {
        print("write log to disk")
    }
}

public class ViewController: UIViewController {
    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Logger.shared.log("view did load")
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        Logger.shared.log("view will appeared")
    }
}

