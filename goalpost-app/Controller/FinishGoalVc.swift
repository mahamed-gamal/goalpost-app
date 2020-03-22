//
//  FinishGoalVc.swift
//  goalpost-app
//
//  Created by Mohamed Gamal on 3/22/20.
//  Copyright © 2020 ME. All rights reserved.
//

import UIKit
import CoreData

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
        if pointsTextField.text != "" {
            self.save { (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismissDetail()
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appdelegate?.persistentContainer.viewContext else {return}
        let goal = Goal(context: managedContext)
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalProgress = Int32(0)
        goal.goalCompletedValue = Int32(pointsTextField.text!)!
        
        do {
            try managedContext.save()
            print("succesfully saved data...")
            completion(true)
        } catch {
            print("could not save \(error.localizedDescription)")
            completion(false)
        }
    }
    
}
