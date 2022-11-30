//
//  File.swift
//  
//
//  Created by ichikawa on 2022/11/17.
//

import Foundation
import Lottie

extension LottieAnimationView {
  convenience init(
    asset name: String,
    bundle: Bundle = .workaroundModule,
    imageProvider: AnimationImageProvider? = nil,
    animationCache: AnimationCacheProvider? = LRUAnimationCache.sharedCache
  ) {
    let animation = LottieAnimation.asset(name, bundle: bundle, animationCache: animationCache)
    let provider = imageProvider ?? BundleImageProvider(bundle: bundle, searchPath: nil)
    self.init(animation: animation, imageProvider: provider)
  }
}
