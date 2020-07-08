//
//  ViewController.swift
//  IOS 1
//
//  Created by Allan Qin on 6/16/20.
//  Copyright © 2020 Allan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentGuest: UILabel!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var guestInput: UITextField!
    
    var queue: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        currentGuest.text = ""
        result.text = "There are currently no guests on the list."
    }

    func displayQueue() {
        if queue.count > 0 {
            currentGuest.text = queue[0]
            
        }
        else {
            currentGuest.text = "No Guests Present"
        }
        
        var string = "There are currently no guests on the list."
        
        if queue.count > 1 {
            string = queue[1...].joined(separator: "\n")
            result.text = string
        }

        
        result.text = string
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        /*
        let price = Double(input1.text!)!
        let taxRate = Double(input2.text!)!
        let tax = price * taxRate
        result.text = "\(tax)"
        */
        
        //var queue = ["car","tar"]
        
        let newGuest = guestInput.text
        queue.append(newGuest!)
        
        /*
        let string = queue.joined(separator: "\n")
        result.text = string
        */
        
        displayQueue()
    }

    @IBAction func removeGuest(_ sender: Any) {
        if queue.count > 0 {
            queue.remove(at: 0)
        }
        displayQueue()
    }
    
}

