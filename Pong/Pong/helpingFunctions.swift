//
//  helpingFunctions.swift
//  Pong
//
//  Created by Umang Kumar on 7/8/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//

import UIKit

func randomCGFloat(_ lowerLimit:CGFloat,_ higherLimit: CGFloat)->CGFloat{
    return lowerLimit + CGFloat(arc4random()) / CGFloat(UINT32_MAX) * (higherLimit-lowerLimit)
}
