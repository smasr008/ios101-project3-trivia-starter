//
//  ViewController.swift
//  Trivia
//
//  Created by samira masri on 10/7/23.
//

import UIKit

class YourViewController: UIViewController {

    // An array of questions
    let questions = ["Question 1", "Question 2", "Question 3"]
    
    // Index to keep track of the current question
    var currentQuestionIndex = 0
    
    // Create a label to display the current question
    let questionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add the label to the view
        view.addSubview(questionLabel)
        
        // Configure the label
        questionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        questionLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // Set the initial question
        updateQuestion()
    }
    
    // Function to update the question label with the current question
    func updateQuestion() {
        if currentQuestionIndex < questions.count {
            questionLabel.text = questions[currentQuestionIndex]
        } else {
            questionLabel.text = "No more questions"
        }
    }
    
    // Action handler for the "Option1" button
    @IBAction func Option1(_ sender: UIButton) {
        // Check if there are more questions
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
            updateQuestion()
        } else {
            // Handle the case when there are no more questions
            questionLabel.text = "No more questions"
        }
    }
    
    // Action handler for the "Option2" button
    @IBAction func Option2(_ sender: UIButton) {
        // Same logic as Option1
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
            updateQuestion()
        } else {
            questionLabel.text = "No more questions"
        }
    }
    
    // Action handler for the "Option3" button
    @IBAction func Option3(_ sender: UIButton) {
        // Same logic as Option1
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
            updateQuestion()
        } else {
            questionLabel.text = "No more questions"
        }
    }
    
    // Action handler for the "Option4" button
    @IBAction func Option4(_ sender: UIButton) {
        // Same logic as Option1
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
            updateQuestion()
        } else {
            questionLabel.text = "No more questions"
        }
    }
}
