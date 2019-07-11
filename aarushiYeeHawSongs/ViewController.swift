//
//  ViewController.swift
//  aarushiYeeHawSongs
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["🤠": "cowboy","🐷" : "pig", "🐮" : "cow", "🐣" : "duck"]
    
    var customMessages = ["cowboy" : ["when i see yee, you say haw", "4 shifter gear box", "yeehaw"],"🐷": ["get along little doggie", "yeehaw", "lasso"], "🐮": ["get off my porch", "get along little doggie", "a bowl of spagetti"], "🐣": ["no lasso", " lasso", "get off my porch" ] ]
    
    @IBAction func showMessage(sender: UIButton) {
        let number = Int.random(in: 0 ..< 3)
        
        let selectedEmotion = sender.titleLabel?.text
        
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[number]
        
        
        //when an user clicks  an emoji it says yeehaw
         let alertController = UIAlertController(title: "YeeHaw", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    
        present(alertController, animated: true, completion: nil)
        
        
       
        
    
    }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
}

//["when i see yee, you say haw", "4 shifter gear box", "yeehaw", "get along little doggie"], "🐷": ["get along little doggie", "yeehaw", "lasso"], "🐮": ["get off my porch", "get along little doggie", "a bowl of spagetti"], "🐣": ["no lasso", " lasso", "get off my porch" ]
