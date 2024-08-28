//
//  CALayer+Ext.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 27/08/24.
//

import Foundation
import UIKit

public extension CALayer {
    @discardableResult
    func addBorder(on edge: UIRectEdge, color: UIColor, thickness: CGFloat = 1.0) -> CALayer {
        let border = CALayer()
        switch edge {
        case .top:
            border.frame = CGRect(x: 0, y: 0, width: frame.width, height: thickness)
        case .bottom:
            border.frame = CGRect(x: 0, y: frame.height - thickness, width: frame.width, height: thickness)
        case .left:
            border.frame = CGRect(x: 0, y: 0, width: thickness, height: frame.height)
        case .right:
            border.frame = CGRect(x: frame.width - thickness, y: 0, width: thickness, height: frame.height)
        
        default:
            break
        }
        border.backgroundColor = color.cgColor
        addSublayer(border)
        return border
    }
}

public extension CALayer {
    
    enum BorderSide {
        case top
        case right
        case bottom
        case left
        case notRight
        case notLeft
        case topAndBottom
        case all
    }
    
    enum Corner {
        case topRight
        case topLeft
        case bottomRight
        case bottomLeft
    }
    
    func addBorder(side: BorderSide, thickness: CGFloat, color: CGColor, maskedCorners: CACornerMask? = nil) {
        var topWidth = frame.size.width; var bottomWidth = topWidth
        var leftHeight = frame.size.height; var rightHeight = leftHeight
        
        var topXOffset: CGFloat = 0; var bottomXOffset: CGFloat = 0
        var leftYOffset: CGFloat = 0; var rightYOffset: CGFloat = 0
        
        switch maskedCorners {
        case [.layerMinXMinYCorner, .layerMaxXMinYCorner]:
            addCorner(.topLeft, thickness: thickness, color: color)
            addCorner(.topRight, thickness: thickness, color: color)
            topWidth -= cornerRadius*2
            leftHeight -= cornerRadius; rightHeight -= cornerRadius
            topXOffset = cornerRadius; leftYOffset = cornerRadius; bottomXOffset = cornerRadius
            
        case [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]:
            addCorner(.bottomLeft, thickness: thickness, color: color)
            addCorner(.bottomRight, thickness: thickness, color: color)
            bottomWidth -= cornerRadius*2
            leftHeight -= cornerRadius; rightHeight -= cornerRadius
            bottomXOffset = cornerRadius
            
        case [.layerMinXMinYCorner, .layerMinXMaxYCorner]:
            addCorner(.topLeft, thickness: thickness, color: color)
            addCorner(.bottomLeft, thickness: thickness, color: color)
            topWidth -= cornerRadius; bottomWidth -= cornerRadius
            leftHeight -= cornerRadius*2
            leftYOffset = cornerRadius; topXOffset = cornerRadius; bottomXOffset = cornerRadius
            
        case [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]:
            addCorner(.topRight, thickness: thickness, color: color)
            addCorner(.bottomRight, thickness: thickness, color: color)
            topWidth -= cornerRadius; bottomWidth -= cornerRadius
            rightHeight -= cornerRadius*2
            rightYOffset = cornerRadius;
            
        case [.layerMaxXMinYCorner, .layerMaxXMaxYCorner,
              .layerMinXMaxYCorner, .layerMinXMinYCorner]:
            addCorner(.topLeft, thickness: thickness, color: color)
            addCorner(.topRight, thickness: thickness, color: color)
            addCorner(.bottomLeft, thickness: thickness, color: color)
            addCorner(.bottomRight, thickness: thickness, color: color)
            topWidth -= cornerRadius*2; bottomWidth -= cornerRadius*2
            topXOffset = cornerRadius; bottomXOffset = cornerRadius
            rightHeight = cornerRadius; leftHeight = cornerRadius
            leftYOffset = cornerRadius; rightYOffset = cornerRadius
            
        default:
            break
            
        }
        
        switch side {
        case .top:
            addLine(x: topXOffset, y: 0, width: topWidth, height: thickness, color: color)
            
        case .right:
            addLine(x: frame.size.width - thickness, y: rightYOffset, width: thickness, height: rightHeight, color: color)
            
        case .bottom:
            addLine(x: bottomXOffset, y: frame.size.height - thickness, width: bottomWidth, height: thickness, color: color)
            
        case .left:
            addLine(x: 0, y: leftYOffset, width: thickness, height: leftHeight, color: color)
            
        case .notRight:
            addLine(x: topXOffset, y: 0, width: topWidth, height: thickness, color: color)
            addLine(x: 0, y: leftYOffset, width: thickness, height: leftHeight, color: color)
            addLine(x: frame.size.width - thickness, y: rightYOffset, width: thickness, height: rightHeight, color: color)
            
        case .notLeft:
            addLine(x: topXOffset, y: 0, width: topWidth, height: thickness, color: color)
            addLine(x: frame.size.width - thickness, y: rightYOffset, width: thickness, height: rightHeight, color: color)
            addLine(x: bottomXOffset, y: frame.size.height - thickness, width: bottomWidth, height: thickness, color: color)
            
        case .topAndBottom:
            addLine(x: topXOffset, y: 0, width: topWidth, height: thickness, color: color)
            addLine(x: bottomXOffset, y: frame.size.height - thickness, width: bottomWidth, height: thickness, color: color)
            
        case .all:
            addLine(x: topXOffset, y: 0, width: topWidth, height: thickness, color: color)
            addLine(x: frame.size.width - thickness, y: rightYOffset, width: thickness, height: rightHeight, color: color)
            addLine(x: bottomXOffset, y: frame.size.height - thickness, width: bottomWidth, height: thickness, color: color)
            addLine(x: 0, y: leftYOffset, width: thickness, height: leftHeight, color: color)
        }
    }
    
    private func addLine(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, color: CGColor) {
        let border = CALayer()
        border.frame = CGRect(x: x, y: y, width: width, height: height)
        border.backgroundColor = color
        addSublayer(border)
    }
    
    private func addCorner(_ corner: Corner, thickness: CGFloat, color: CGColor) {
        let width = frame.size.width; let height = frame.size.height
        var x = cornerRadius
        var y = cornerRadius
        var startAngle: CGFloat = .pi; var endAngle: CGFloat = .pi*3/2
        
        switch corner {
        case .bottomLeft:
            y = height - cornerRadius
            startAngle = .pi/2; endAngle = .pi
            
        case .bottomRight:
            x = width - cornerRadius
            y = height - cornerRadius
            startAngle = 0; endAngle = .pi/2
            
        case .topRight:
            x = width - cornerRadius
            startAngle = .pi*3/2; endAngle = 0
        
        default:
            break
        }
        
        let cornerPath = UIBezierPath(
            arcCenter: CGPoint(x: x, y: y),
            radius: cornerRadius - thickness,
            startAngle: startAngle,
            endAngle: endAngle, clockwise: true)
        
        let cornerShape = CAShapeLayer()
        cornerShape.path = cornerPath.cgPath
        cornerShape.lineWidth = thickness
        cornerShape.strokeColor = color
        cornerShape.fillColor = nil
    }
}
