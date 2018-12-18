//
//  ViewController.swift
//  SwiftFun
//
//  Created by Michael Kozub on 12/18/18.
//  Copyright © 2018 Michael Kozub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //view.backgroundColor = UIColor.red
    }
    
    func getRandomColor() -> UIColor {
        //Generate between 0 to 1
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }

    @IBAction func buttonTap(_ sender: Any) {
        print("Hey the button was tapped :)")
        count = count + 1
        testLabel.text = String(count)
        if (count >= 10){
            view.backgroundColor = getRandomColor()
        }
    }
    
}

