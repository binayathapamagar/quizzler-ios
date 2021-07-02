//
//  ViewController.swift
//  Quizzler
//
//  Created by Binaya on 11/05/2021.
//

import UIKit

class QuizzlerViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    @IBOutlet weak var thirdChoiceButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        }else {
            sender.backgroundColor = UIColor.red
        }
        self.quizBrain.nextQuestion()
        // Delays for 200 milliseconds and won't repeat.
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { timer in
            self.updateUI()
        }
    }
    
    func updateUI() {
        questionLabel.text = quizBrain.getQuestion()
        firstChoiceButton.setTitle(quizBrain.getChoices()[0], for: .normal)
        secondChoiceButton.setTitle(quizBrain.getChoices()[1], for: .normal)
        thirdChoiceButton.setTitle(quizBrain.getChoices()[2], for: .normal)
        self.firstChoiceButton.backgroundColor = UIColor.clear
        self.secondChoiceButton.backgroundColor = UIColor.clear
        self.thirdChoiceButton.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgess()
        scoreLabel.text = "Score = " + String(quizBrain.getScore())
    }
    
}

