//
//  FCPNowPlayingTemplate.swift
//  flutter_carplay
//
//  Created by Piotr Rogulski on 18.06.2025.
//

import CarPlay

@available(iOS 14.0, *)
class FCPNowPlayingTemplate {
  private(set) var _super: CPNowPlayingTemplate?
  private(set) var elementId: String
  
  init(obj: [String : Any]) {
    self.elementId = obj["_elementId"] as! String
    // CPNowPlayingTemplate is a singleton, so we use the shared instance
    self._super = CPNowPlayingTemplate.shared
  }
  
  var get: CPNowPlayingTemplate {
    // Return the shared instance of CPNowPlayingTemplate
    return CPNowPlayingTemplate.shared
  }
}

@available(iOS 14.0, *)
extension FCPNowPlayingTemplate: FCPRootTemplate { }
