//
//  ViewController.swift
//  Magic8Ball
//
//  Created by George Livas on 02/07/2018.
//  Copyright © 2018 George Livas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]

    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shakeButtonTapped(_ sender: Any) {
        print("Shake it like a polaroid picture!")
        answer.text = answers[Int(arc4random_uniform(UInt32(answers.count)))]
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        let randomIndex = Int(arc4random_uniform(UInt32(answers.count)))
        
        answer.text = answers[randomIndex]
    }
}

