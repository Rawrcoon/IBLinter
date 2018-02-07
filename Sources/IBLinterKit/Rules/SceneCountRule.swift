//
//  SceneCountRule.swift
//  IBLinterKit
//
//  Created by Mark Oelsner on 2018/02/07.
//

import IBLinterCore

extension Rules {
    
    public struct SceneCountRule: Rule {
        
        public static var identifier: String = "sceneCount"
        
        public init() {}
        
        public func validate(storyboard: StoryboardFile) -> [Violation] {
            if let sceneCount = storyboard.document.scenes?.count, sceneCount > 6 {
                let message = "Storyboard exceeds maximum scene count of 6"
                return [Violation(interfaceBuilderFile: storyboard, message: message, level: .error)]
            } else {
                return []
            }
        }
        
        public func validate(xib: XibFile) -> [Violation] {
            return []
        }
    }
}
