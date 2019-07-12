//
//  ViewController.swift
//  aarushiYeeHawSongs
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let emojis = ["🌁": "ggb","🌆" : "sf", "🏞" : "yosemite", "🌅" : "sunset"]
    
    var customMessages = ["ggb" : ["Before the bridge was built, the only practical short route between San Francisco and Marin County was by boat across a section of the San Francisco Bay", "You can visit the Palace of Fine Arts, or Baker Beach. You could go on scenic bike rides across the bridge", "The bridge is named after the Golden Gate Strait, which is the entrance to the San Francisco Bay from the Pacific Ocean. In 1846 an American topographer felt that the strait reminded him of a Byzantium harbor known as “Golden Horn,” and thus the name was bestowed."],"sf": ["Visit Union Square. Lots of stores are located near by.", "San Francisco is very proud of their cable car system. It is the last manually operated system in the world today. At its peak you would find 23 cable car lines in the city, but today we have just three left.", "Ghiradelli Square offers amazing sweets. It was initially a chocolate factory that was owned and established by Domenico Ghirardelli."], "yosemite": ["hike half dome", "hike to the waterfalls", "enjoy nature's beauty"], "sunset": ["you can observe the sunset", " enjoys nature's beauty", "keep a look out for sea life." ] ]
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        
        let number = Int.random(in: 0 ..< 3)
        
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[number]
        
        
        //when an user clicks  an emoji it says yeehaw
         let alertController = UIAlertController(title: "fun facts/things to do", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    
        present(alertController, animated: true, completion: nil)
        
        
       
        
    
    }
   
    

   
}

//["when i see yee, you say haw", "4 shifter gear box", "yeehaw", "get along little doggie"], "🐷": ["get along little doggie", "yeehaw", "lasso"], "🐮": ["get off my porch", "get along little doggie", "a bowl of spagetti"], "🐣": ["no lasso", " lasso", "get off my porch" ]
