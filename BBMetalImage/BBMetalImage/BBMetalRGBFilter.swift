//
//  BBMetalRGBFilter.swift
//  BBMetalImage
//
//  Created by Kaibo Lu on 4/3/19.
//  Copyright © 2019 Kaibo Lu. All rights reserved.
//

import UIKit

/// Adjusts the individual RGB channels of an image
public class BBMetalRGBFilter: BBMetalBaseFilter {
    /// Normalized values by which each color channel is multiplied. The range is from 0.0 up, with 1.0 as the default.
    public var red: Float
    public var green: Float
    public var blue: Float
    
    public init(red: Float = 1, green: Float = 1, blue: Float = 1) {
        self.red = red
        self.green = green
        self.blue = blue
        super.init(kernelFunctionName: "rgbKernel")
    }
    
    override func updateParameters(forComputeCommandEncoder encoder: MTLComputeCommandEncoder) {
        encoder.setBytes(&red, length: MemoryLayout<Float>.size, index: 0)
        encoder.setBytes(&green, length: MemoryLayout<Float>.size, index: 1)
        encoder.setBytes(&blue, length: MemoryLayout<Float>.size, index: 2)
    }
}