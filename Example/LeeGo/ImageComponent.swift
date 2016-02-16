//
//  ImageComponent.swift
//  LeeGo
//
//  Created by Victor WANG on 22/01/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Foundation
import LeeGo

class ImageComponent: UIImageView {

}

extension UIImageView {
    public override func handleCustomStyle(styles: [String: AnyObject]) {
        for (key, value) in styles {
            switch (key, value) {
            case ("3to2"/*Style.ratio3To2*/, let ratio as CGFloat):
                let constraint = NSLayoutConstraint(item: self, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.Width, multiplier: 1/ratio, constant: 0)
                constraint.priority = 900
                self.addConstraint(constraint)
            default:
                break
            }
        }
    }
}