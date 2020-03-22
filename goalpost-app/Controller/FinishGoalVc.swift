//
//  FinishGoalVc.swift
//  goalpost-app
//
//  Created by Mohamed Gamal on 3/22/20.
//  Copyright © 2020 ME. All rights reserved.
//

import UIKit

class FinishGoalVc: UIViewController , UITextFieldDelegate {
    
    //MARK: - Propertes
    var goalDescription: String!
    var goalType: GoalType!
    //MARK: - Outlets
    @IBOutlet weak var pointsTextField: UITextField!
    @IBOutlet weak var createGoalBtn: UIButton!
    
    //MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointsTextField.delegate = self
    }
    
    func initData(description: String , type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    //MARK: - Actions
    @IBAction func createGoalBtnPressed(_ sender: UIButton) {
        
    }
    
}
