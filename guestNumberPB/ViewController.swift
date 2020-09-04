//
//  ViewController.swift
//  guestNumberPB
//
//  Created by eric on 2020/8/30.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var count2: UIImageView!
    @IBOutlet weak var count1: UIImageView!
    @IBOutlet weak var count3: UIImageView!
    @IBOutlet weak var count4: UIImageView!
    @IBOutlet weak var count5: UIImageView!
    @IBOutlet weak var count6: UIImageView!
    @IBOutlet weak var guessTextField: UITextField!
    @IBOutlet weak var endImageView: UIImageView!
    @IBOutlet weak var guessLabel: UILabel!
    @IBOutlet weak var KoopaImageView: UIImageView!
    @IBOutlet weak var princessImageView: UIImageView!
    @IBOutlet weak var marioImageView: UIImageView!
    
    @IBOutlet weak var rangeImageView: UIImageView!
    @IBOutlet weak var sorryImagView: UIImageView!
    @IBOutlet weak var guesscountLabel: UILabel!
    @IBOutlet weak var resultImageView: UIImageView!
    
    @IBOutlet weak var range1Label: UILabel!
    @IBOutlet weak var rangeLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    var answer = Int.random(in: 1...50)
  
    var guesswrongcount = 6
    var minnumber = 1
    var maxnumber = 50

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func guessBtn(_ sender: Any) {
        
        let numberText = guessTextField.text!
      
        let number = Int(numberText)
        if number != nil {
            let guessNumber = number!
            if guessNumber == answer {
                resultLabel.text = "猜對了"
                guessTextField.text = ""
                endImageView.isHidden = false
                resultImageView.isHidden = false
                marioImageView.isHidden = true
                princessImageView.isHidden = true
                KoopaImageView.isHidden = true
                rangeImageView.isHidden = true
                guessLabel.text = ""
                rangeLabel.text = ""
                range1Label.text = ""
                
                
             
            }else if guessNumber < answer {
                resultLabel.text = "太小了,還想不想救公主"
                guessTextField.text = ""
                guesswrongcount  = guesswrongcount - 1
//                guesscountLabel.text = "\(guesswrongcount)"

            }
                
            else {
                resultLabel.text = "太大了，公主在等你，加油"
                guessTextField.text = ""
                guesswrongcount = guesswrongcount - 1
//                guesscountLabel.text = "\(guesswrongcount)"
             
            }
            ranger(guess: guessNumber)
            
            switch Int(guesswrongcount) {
            case 0:
                count1.isHidden = true
            case 1:
                count2.isHidden = true
            case 2:
                count3.isHidden = true
            case 3:
                count4.isHidden = true
            case 4:
                count5.isHidden = true
            case 5:
                count6.isHidden = true
            default:
                break
            }
           
            
            
            if guesswrongcount == 0 {
                resultLabel.text = "太遜了"
                sorryImagView.isHidden = false
                marioImageView.isHidden = true
                princessImageView.isHidden = true
                KoopaImageView.isHidden = true
                rangeImageView.isHidden = true

                guessLabel.text = ""
                rangeLabel.text = ""
                range1Label.text = ""
              
            }
        }
        
        view.endEditing(true)
        print(answer)
     
       
    }

    //學姐版
    func ranger1() -> String {
        return "\(minnumber)~\(maxnumber)"
    }
    func ranger(guess:Int){
        if guess > answer {
            maxnumber = guess - 1

            rangeLabel.text = "\(ranger1())"

        }else if guess < answer {
            minnumber = guess + 1

            rangeLabel.text = "\(ranger1())"
        }else {
//            rangeLabel.text = "猜對了"
        }
    }
//學姐版
    
    
    @IBAction func playBtnAgain(_ sender: Any) {
        
        answer = Int.random(in: 1...50)
        rangeLabel.text = ""
        resultLabel.text = ""
        guessLabel.text = "猜"
        range1Label.text = "提示"
        guesswrongcount = 6
        minnumber = 0
        maxnumber = 50
        guesscountLabel.text = ""
        sorryImagView.isHidden = true
        endImageView.isHidden = true
        marioImageView.isHidden = false
        princessImageView.isHidden = false
        KoopaImageView.isHidden = false
        resultImageView.isHidden = false
        count1.isHidden = false
        count2.isHidden = false
        count3.isHidden = false
        count4.isHidden = false
        count5.isHidden = false
        count6.isHidden = false
        
    }
    
    
}

