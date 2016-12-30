//
//  DropShadow.swift
//  BrainPOP
//
//  Created by Michael De La Cruz on 11/17/16.
//  Copyright © 2016 Michael De La Cruz. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {
  func addDropShadow() {
    // implementation
    layer.shadowColor = UIColor.black.cgColor
    layer.shadowOpacity = 0.7
    layer.shadowOffset = CGSize.zero
    layer.shadowRadius = 5
  }
}
