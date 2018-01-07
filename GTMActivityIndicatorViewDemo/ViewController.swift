//
//  ViewController.swift
//  GTMActivityIndicatorViewDemo
//
//  Created by luoyang on 2016/12/6.
//  Copyright © 2016年 syncsoft. All rights reserved.
//

import UIKit
import GTMActivityIndicatorView

class ViewController: UIViewController {
    
    let animations: [NVActivityIndicatorAnimationType] = [
        NVActivityIndicatorAnimationType.audioEqualizer,
        NVActivityIndicatorAnimationType.ballBeat,
        NVActivityIndicatorAnimationType.ballClipRotate,
        NVActivityIndicatorAnimationType.ballClipRotateMultiple,
        NVActivityIndicatorAnimationType.ballClipRotatePulse,
        NVActivityIndicatorAnimationType.ballGridBeat,
        NVActivityIndicatorAnimationType.ballGridPulse,
        NVActivityIndicatorAnimationType.ballPulse,
        NVActivityIndicatorAnimationType.ballPulseRise,
        NVActivityIndicatorAnimationType.ballPulseSync,
        NVActivityIndicatorAnimationType.ballRotate,
        NVActivityIndicatorAnimationType.ballRotateChase,
        NVActivityIndicatorAnimationType.ballScale,
        NVActivityIndicatorAnimationType.ballScaleMultiple,
        NVActivityIndicatorAnimationType.ballScaleRipple,
        NVActivityIndicatorAnimationType.ballScaleRippleMultiple,
        NVActivityIndicatorAnimationType.ballSpinFadeLoader,
        NVActivityIndicatorAnimationType.ballTrianglePath,
        NVActivityIndicatorAnimationType.ballZigZag,
        NVActivityIndicatorAnimationType.ballZigZagDeflect,
        NVActivityIndicatorAnimationType.blank,
        NVActivityIndicatorAnimationType.cubeTransition,
        NVActivityIndicatorAnimationType.lineScale,
        NVActivityIndicatorAnimationType.lineScaleParty,
        NVActivityIndicatorAnimationType.lineScalePulseOut,
        NVActivityIndicatorAnimationType.lineScalePulseOutRapid,
        NVActivityIndicatorAnimationType.lineSpinFadeLoader,
        NVActivityIndicatorAnimationType.orbit,
        NVActivityIndicatorAnimationType.pacman,
        NVActivityIndicatorAnimationType.semiCircleSpin,
        NVActivityIndicatorAnimationType.squareSpin,
        NVActivityIndicatorAnimationType.triangleSkewSpin
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: CGFloat(237 / 255.0), green: CGFloat(85 / 255.0), blue: CGFloat(101 / 255.0), alpha: 1)
        
        let cols = 4
        let rows = 8
        let cellWidth = Int(self.view.frame.width / CGFloat(cols))
        let cellHeight = Int(self.view.frame.height / CGFloat(rows))
        
        
        
        for (index, animation) in animations.enumerated() {
            let x = index % cols * cellWidth
            let y = index / cols * cellHeight
            let frame = CGRect(x: x, y: y, width: cellWidth, height: cellHeight)
            let activityIndicatorView = NVActivityIndicatorView(frame: frame,
                                                                animationType: animation)
            let animationTypeLabel = UILabel(frame: frame)
            
            animationTypeLabel.text = String(index)
            animationTypeLabel.sizeToFit()
            animationTypeLabel.textColor = UIColor.white
            animationTypeLabel.frame.origin.x += 5
            animationTypeLabel.frame.origin.y += CGFloat(cellHeight) - animationTypeLabel.frame.size.height
            
            activityIndicatorView.padding = 20
            self.view.addSubview(activityIndicatorView)
            self.view.addSubview(animationTypeLabel)
            activityIndicatorView.startAnimating()
            
            let button:UIButton = UIButton(frame: frame)
            button.tag = index
            button.addTarget(self,
                             action: #selector(buttonTapped(_:)),
                             for: UIControlEvents.touchUpInside)
            self.view.addSubview(button)
        }
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        let size = CGSize(width: 30, height:30)
        
        showIndicator(size, message: "Loading...", animationType: animations[sender.tag], color: UIColor(red: 246/255, green: 83/255, blue: 20/255, alpha: 1.0))
        perform(#selector(delayedStopActivity),
                with: nil,
                afterDelay: 2.5)
    }
    
    @objc func delayedStopActivity() {
        hideIndicator()
    }

}

