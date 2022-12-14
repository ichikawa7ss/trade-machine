//
//  Bundle+Workaround.swift
//  
//
//  Created by ichikawa on 2022/11/17.
//

import Foundation

// MARK: - BundleFinder
private class BundleFinder {}

extension Foundation.Bundle {
  /// Returns the resource bundle associated with the current Swift module.
  static var workaroundModule: Bundle = {
    let bundleName = "DesignSystem_Representable"
    
    let candidates = [
      // Bundle should be present here when the package is linked into an App.
      Bundle.main.resourceURL,
      
      // Bundle should be present here when the package is linked into a framework.
      Bundle(for: BundleFinder.self).resourceURL,
      
      // For command-line tools.
      Bundle.main.bundleURL,
      
      // Bundle should be present here when running previews from a different package (this is the path to "…/Debug-iphonesimulator/").
      Bundle(for: BundleFinder.self).resourceURL?.deletingLastPathComponent().deletingLastPathComponent(),
    ]
    
    for candidate in candidates {
      let bundlePath = candidate?.appendingPathComponent(bundleName + ".bundle")
      if let bundle = bundlePath.flatMap(Bundle.init(url:)) {
        return bundle
      }
    }
    fatalError("unable to find bundle named \(bundleName)")
  }()
}
