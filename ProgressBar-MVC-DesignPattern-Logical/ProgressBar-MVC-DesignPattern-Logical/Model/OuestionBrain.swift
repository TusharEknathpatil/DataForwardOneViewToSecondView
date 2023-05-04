//
//  OuestionBrain.swift
//  ProgressBar-MVC-DesignPattern-Logical
//
//  Created by Mac on 04/05/23.
//

import Foundation

struct QuestionBrain {
    var quizArray = [
        Question(questionType: "India have very Large population", answersType: "true"),
        Question(questionType: "china is PowerFul nation in World", answersType: "false"),
        Question(questionType: "India is Agriculatural Thinks is very low developes", answersType: "true"),
        Question(questionType: "virat kohli is Bowlwer", answersType: "true"),
        Question(questionType: "ms is full is master of science", answersType: "true"),
        Question(questionType: "mumbai Indians is very more fanbase ", answersType: "false")]
    
    var arrayIndexNo = 0
    
    func checkAnswer(_ userAnswer:String) -> Bool {
        if userAnswer == quizArray[arrayIndexNo].answersType {
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quizArray[arrayIndexNo].questionType
    }
    
    func getProgress() -> Float {
        let progressStore = Float(arrayIndexNo) / Float(quizArray.count)
        return progressStore
    }
    mutating func nextQuestion() {
        if arrayIndexNo + 1 < quizArray.count {
            arrayIndexNo += 1
        } else
        {
            arrayIndexNo = 0
        }
    }

}
