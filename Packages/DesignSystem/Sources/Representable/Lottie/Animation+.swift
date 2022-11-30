//
//  Animation+.swift
//  
//
//  Created by ichikawa on 2022/11/17.
//

import Lottie
import UIKit

extension Lottie.LottieAnimation {
  static func asset(
    _ name: String,
    bundle: Bundle = .module,
    animationCache: AnimationCacheProvider? = nil
  ) -> Lottie.LottieAnimation? {
    let cacheKey = bundle.bundlePath + "/" + name
    
    if let animationCache = animationCache,
       let animation = animationCache.animation(forKey: cacheKey)
    {
      return animation
    }
    
    guard let json = NSDataAsset(name: name, bundle: bundle)?.data else {
      return nil
    }
    
    do {
      let animation = try JSONDecoder().decode(LottieAnimation.self, from: json)
      animationCache?.setAnimation(animation, forKey: cacheKey)
      return animation
    } catch {
      return nil
    }
  }
}
