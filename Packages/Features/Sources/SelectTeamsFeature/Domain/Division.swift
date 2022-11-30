//
//  Division.swift
//  
//
//  Created by ichikawa on 2022/11/27.
//

import Foundation

public enum Division: String, Equatable {
  case atlantic
  case central
  case southeast
  case northwest
  case pacific
  case southwest
}

extension Division {
  var conference: Conference {
    switch self {
    case .atlantic,
        .central,
        .southeast:
      return .eastern
    case .northwest,
        .pacific,
        .southwest:
      return .western
    }
  }
}
