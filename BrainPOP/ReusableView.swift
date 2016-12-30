//
//  ReusableView.swift
//  BrainPOP
//
//  Created by Michael De La Cruz on 11/18/16.
//  Copyright © 2016 Michael De La Cruz. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

// Constrainting to UIView
extension ReusableView where Self: UIView {
  static var reuseIdentifier: String {
    return String(describing: self)
  }
}

