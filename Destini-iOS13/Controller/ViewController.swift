//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Santiago Jaramillo on 11/18/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice3Button: UIButton!    
    @IBOutlet weak var choice4Button: UIButton!
    var ans = true
    var explanation = ""
    var rightAnswers = 0
    var storyBrain = StoryBrain()
    var count = 0;
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        ans = storyBrain.isRightAnswer(ans: sender.titleLabel?.text ?? "")
        if ans {
            rightAnswers += 1;
        }
        explanation = storyBrain.getExplanation()
        count = storyBrain.getCounter()
        
        updateUI()
     
    }
    
    func updateUI() {
        storyBrain.addToCounter()
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
        choice3Button.setTitle(storyBrain.getChoice3(), for: .normal)
        choice4Button.setTitle(storyBrain.getChoice4(), for: .normal)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? SecondViewController {
            destinationVC.answer = ans
            destinationVC.answerExplanation = explanation
            destinationVC.counter = count
            destinationVC.score = rightAnswers
        }
        
//            if let safeDocumentName = appointmentID {
//                    destinationVC.appointID = safeDocumentName
//                    destinationVC.appointDate = appointmentDate
//                    destinationVC.appointTime = appointmentTime
//                    destinationVC.appointInfo = appointmentInfo
//                    destinationVC.appointName = appointmentName
//                    destinationVC.appointGoogleMeet = appointmentGoogleMeet
//                }
            
        
    }
    
}
































