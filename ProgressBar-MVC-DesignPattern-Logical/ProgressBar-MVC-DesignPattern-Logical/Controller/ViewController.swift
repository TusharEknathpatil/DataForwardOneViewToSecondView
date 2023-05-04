//
//  ViewController.swift
//  ProgressBar-MVC-DesignPattern-Logical
//
//  Created by Mac on 04/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    var questionBrainObj = QuestionBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func answerButton(_ sender: Any) {
        let userAnswer = (sender as AnyObject).currentTitle
        let userPressButtonAns = questionBrainObj.checkAnswer(userAnswer!!)
        
        if userPressButtonAns
        {
            
            trueButton.backgroundColor = .black
        } else
        {
            
            falseButton.backgroundColor = .black
        }
        
        questionBrainObj.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI) , userInfo: nil, repeats: false)
        
    }
  @objc func updateUI() {
      questionLabel.text = questionBrainObj.getQuestionText()
      progressBar.progress = questionBrainObj.getProgress()
      trueButton.backgroundColor = .clear
      falseButton.backgroundColor = .clear
     
    }
}

