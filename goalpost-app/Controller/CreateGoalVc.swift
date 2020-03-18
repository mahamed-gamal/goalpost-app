//
//  CreateGoalVc.swift
//  goalpost-app
//
//  Created by Mohamed Gamal on 3/18/20.
//  Copyright © 2020 ME. All rights reserved.
//

import UIKit

class CreateGoalVc: UIViewController {
    
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

    }
    //MARK: - Actions
    @IBAction func nextBtnPressed(_ sender: Any) {
        
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
}
