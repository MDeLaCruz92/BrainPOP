//
//  NibLoadableView.swift
//  BrainPOP
//
//  Created by Michael De La Cruz on 11/18/16.
//  Copyright © 2016 Michael De La Cruz. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
  static var nibName: String {
    return String(describing: self)
  }
}
