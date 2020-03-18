//
//  UIViewControllerExt.swift
//  goalpost-app
//
//  Created by Mohamed Gamal on 3/18/20.
//  Copyright © 2020 ME. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentDetail(_ viewControllerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        self.view.layer.add(transition, forKey: "transition")
        
        present(viewControllerToPresent, animated: false, completion: nil)
        
    }
    
    func dismissDetail() {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        self.view.layer.add(transition, forKey: "transition")
        
        dismiss(animated: false , completion: nil)
    }
}
