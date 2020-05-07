//
//  CircularProgressView
//  circleProgress
//
//  Created by Ahmed on 7/4/19.
//  Copyright © 2019 Ahmed. All rights reserved.
//

import UIKit

class CircularProgressView: UIView {
    private var circleLayer = CAShapeLayer()
    private var progressLayer = CAShapeLayer()
    override init(frame: CGRect) {
        super.init(frame: frame)
        createCircularPath()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createCircularPath()
    }
    func createCircularPath() {
        let circularPath = UIBezierPath(arcCenter: CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0), radius: 40, startAngle: -.pi / 2, endAngle: 2 * .pi, clockwise: true)
        circleLayer.path = circularPath.cgPath
        circleLayer.fillColor = UIColor.red.cgColor
        circleLayer.lineCap = .round
        circleLayer.lineWidth = 10.0
        
        circleLayer.strokeColor = UIColor.darkGray.cgColor
        progressLayer.path = circularPath.cgPath
        progressLayer.fillColor = UIColor.clear.cgColor
        progressLayer.lineCap = .round
        progressLayer.lineWidth = 10.0
        progressLayer.strokeEnd = 0
        progressLayer.strokeColor = UIColor.orange.cgColor
        layer.addSublayer(circleLayer)
        layer.addSublayer(progressLayer)
    }
    func progressAnimation(duration: TimeInterval) {
        let circularProgressAnimation = CABasicAnimation(keyPath: "strokeEnd")
        circularProgressAnimation.duration = duration
        circularProgressAnimation.toValue = 1.0
        circularProgressAnimation.fillMode = .forwards
        circularProgressAnimation.isRemovedOnCompletion = false
        progressLayer.add(circularProgressAnimation, forKey: "progressAnim")
    }
}

