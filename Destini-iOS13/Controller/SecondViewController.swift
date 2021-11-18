//
//  SecondViewController.swift
//  Destini-iOS13
//
//  Created by Santiago Jaramillo on 11/18/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var answerDisplayLabel: UILabel!
    @IBOutlet weak var answeExplanationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var continueButton: UIButton!
    
    var answer: Bool?
    var answerExplanation: String?
    var counter: Int?
    var score: Int?
    
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
        if let ans = answer,
            let ansExp = answerExplanation,
            let count = counter,
            let sc = score{
            if (ans) {
                answerDisplayLabel.text = "Correct"
            }else {
                answerDisplayLabel.text = "Incorrect"
            }
                answeExplanationLabel.text = ansExp
            if (count == 1){
                imageView.image = UIImage(named:"fourthMini")
                answerDisplayLabel.textColor = #colorLiteral(red: 0.3419735432, green: 0.9470861554, blue: 0.8371120691, alpha: 1)
                answeExplanationLabel.textColor = #colorLiteral(red: 0.3419735432, green: 0.9470861554, blue: 0.8371120691, alpha: 1)
            }else if (count == 2) {
                imageView.image = UIImage(named:"wildFires")
                answerDisplayLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                answeExplanationLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            }else if (count == 3) {
                imageView.image = UIImage(named:"overFishing")
                answerDisplayLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                answeExplanationLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            }else if (count == 4) {
                    imageView.image = UIImage(named:"water")
                    answerDisplayLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                    answeExplanationLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            }else if(count == 5) {
                answerDisplayLabel.text = "All of them are Correct!"
                continueButton.titleLabel?.text = "Score" + String(sc)
            }
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func returnButtonPressed(_ sender: UIButton) {
        if(counter != 5) {
            navigationController?.popViewController(animated: true)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
