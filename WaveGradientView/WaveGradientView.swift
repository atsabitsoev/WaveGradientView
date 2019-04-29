//
//  WaveGradientView.swift
//  WaveGradientView
//
//  Created by Ацамаз Бицоев on 29/04/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import UIKit

@IBDesignable
class WaveGradientView: UIView {
    
    
    @IBInspectable var color2: UIColor = #colorLiteral(red: 0.368627451, green: 0.2078431373, blue: 0.6941176471, alpha: 1)
    @IBInspectable var color1: UIColor = #colorLiteral(red: 0.3382141292, green: 0.7531377077, blue: 0.9901052117, alpha: 1)
    

    override func draw(_ rect: CGRect) {
       
        drawWave()
        
    }
    
    
    private func drawWave() {
        
        let mainPath = UIBezierPath()
        
        let startPoint = CGPoint(x: 0, y: bounds.height)
        let endPoint = CGPoint(x: bounds.width, y: 0.5 * bounds.height)
        
        mainPath.move(to: CGPoint(x: bounds.width, y: 0))
        mainPath.addLine(to: CGPoint(x: 0, y: 0))
        mainPath.addLine(to: startPoint)
        mainPath.addCurve(to: endPoint,
                          controlPoint1: CGPoint(x: startPoint.x + 100,
                                                 y: (startPoint.y + endPoint.y) / 2 - 80),
                          controlPoint2: CGPoint(x: endPoint.x - 50,
                                                 y: (startPoint.y + endPoint.y) / 2 + 30))
        mainPath.close()
        color1.setFill()
        mainPath.fill()
    }
 

}
