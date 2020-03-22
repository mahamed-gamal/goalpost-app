//
//  CreateGoalVc.swift
//  goalpost-app
//
//  Created by Mohamed Gamal on 3/18/20.
//  Copyright © 2020 ME. All rights reserved.
//

import UIKit

class CreateGoalVc: UIViewController , UITextViewDelegate {
    
    //MARK: - Outlets
    @IBOutlet weak var createGoalTextView: UITextView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var shortTermBtn: UIButton!
    
    //MARK: - Property
    var goalType: GoalType = .shortTerm
    
    //MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.bindToKeyboard()
        shortTermBtn.setSelectedColor()
        longTermBtn.setDiselectedColor()
        createGoalTextView.delegate = self
    }
    //MARK: - Actions
    @IBAction func nextBtnPressed(_ sender: Any) {
        if createGoalTextView.text != "" && createGoalTextView.text != "What is your goal?" {
            guard let finishGoalVc = storyboard?.instantiateViewController(identifier: "FinishGoalVc") as? FinishGoalVc else {return}
            finishGoalVc.initData(description: createGoalTextView.text! , type: goalType)
            presentDetail(finishGoalVc)
        }
    }
    
    @IBAction func shortTermBtnPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.setSelectedColor()
        longTermBtn.setDiselectedColor()
    }
    
    @IBAction func longTermBtnPressed(_ sender: Any) {
        goalType = .longTerm
        longTermBtn.setSelectedColor()
        shortTermBtn.setDiselectedColor()
        
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        createGoalTextView.text = ""
        createGoalTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
