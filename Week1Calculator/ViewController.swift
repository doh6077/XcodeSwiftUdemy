//
//  ViewController.swift
//  Week1Calculator
//
//  Created by Dohee Kim on 2025-03-03.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    var numberOnScreen: Double = 0.0
    
    var previousNumber: Double = 0.0
    
    var performingMath = false
    
    var operation = 0
    
    var btnSound: AVAudioPlayer!
    
    
    //MARK: -IBOutlets
    @IBOutlet var outputLbl: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func playSound(){
        let path = Bundle.main.path(forResource: "click.mp3", ofType: nil)!
        
        let url = URL(fileURLWithPath: path)
        
        do{
            btnSound = try AVAudioPlayer(contentsOf: url)
            btnSound.play()
        }catch{}
        
    }
    
    @IBAction func numberBtn(_ sender: UIButton){
        //When we press a number on the calculator
        playSound()
        
    }
    
    @IBAction func operators(_ sender: UIButton){
        // when we press an operator on the calculator
        playSound()
    }


}

