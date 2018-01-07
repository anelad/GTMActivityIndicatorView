//
//  NVActivityIndicatorDelegate.swift
//  NVActivityIndicatorViewDemo
//
//  Created by luoyang on 2016/12/6.
//  Copyright © 2016 GTMYang. All rights reserved.
//

import UIKit

public protocol NVActivityIndicatorAnimation {
    func setUpAnimation(in layer:CALayer, size: CGSize, color: UIColor)
}

public enum NVActivityIndicatorAnimationType : Int{
    case audioEqualizer = 1, ballBeat, ballClipRotate, ballClipRotateMultiple, ballClipRotatePulse, ballGridBeat, ballGridPulse, ballPulse, ballPulseRise, ballPulseSync, ballRotate, ballRotateChase, ballScale, ballScaleMultiple, ballScaleRipple, ballScaleRippleMultiple, ballSpinFadeLoader, ballTrianglePath, ballZigZag, ballZigZagDeflect, blank, cubeTransition, lineScale, lineScaleParty, lineScalePulseOut, lineScalePulseOutRapid, orbit, pacman, semiCircleSpin, triangleSkewSpin, squareSpin, lineSpinFadeLoader
}

internal func animationTypeToAnimation(type : NVActivityIndicatorAnimationType) -> NVActivityIndicatorAnimation{
    switch type {
    case .audioEqualizer:
        return NVActivityIndicatorAnimationAudioEqualizer()
    case .ballBeat:
        return NVActivityIndicatorAnimationBallBeat()
    case .ballClipRotate:
        return NVActivityIndicatorAnimationBallClipRotate()
    case .ballClipRotateMultiple:
        return NVActivityIndicatorAnimationBallClipRotateMultiple()
    case .ballClipRotatePulse:
        return NVActivityIndicatorAnimationBallClipRotatePulse()
    case .ballGridBeat:
        return NVActivityIndicatorAnimationBallGridBeat()
    case .ballGridPulse:
        return NVActivityIndicatorAnimationBallGridPulse()
    case .ballPulse:
        return NVActivityIndicatorAnimationBallPulse()
    case .ballPulseRise:
        return NVActivityIndicatorAnimationBallPulseRise()
    case .ballPulseSync:
        return NVActivityIndicatorAnimationBallPulseSync()
    case .ballRotate:
        return NVActivityIndicatorAnimationBallRotate()
    case .ballRotateChase:
        return NVActivityIndicatorAnimationBallRotateChase()
    case .ballScale:
        return NVActivityIndicatorAnimationBallScale()
    case .ballScaleMultiple:
        return NVActivityIndicatorAnimationBallScaleMultiple()
    case .ballScaleRipple:
        return NVActivityIndicatorAnimationBallScaleRipple()
    case .ballScaleRippleMultiple:
        return NVActivityIndicatorAnimationBallScaleRippleMultiple()
    case .ballSpinFadeLoader:
        return NVActivityIndicatorAnimationBallSpinFadeLoader()
    case .ballTrianglePath:
        return NVActivityIndicatorAnimationBallTrianglePath()
    case .ballZigZag:
        return NVActivityIndicatorAnimationBallZigZag()
    case .ballZigZagDeflect:
        return NVActivityIndicatorAnimationBallZigZagDeflect()
    case .blank:
        return NVActivityIndicatorAnimationBlank()
    case .cubeTransition:
        return NVActivityIndicatorAnimationCubeTransition()
    case .lineScale:
        return NVActivityIndicatorAnimationLineScale()
    case .lineScaleParty:
        return NVActivityIndicatorAnimationLineScaleParty()
    case .lineScalePulseOut:
        return NVActivityIndicatorAnimationLineScalePulseOut()
    case .lineScalePulseOutRapid:
        return NVActivityIndicatorAnimationLineScalePulseOutRapid()
    case .orbit:
        return NVActivityIndicatorAnimationOrbit()
    case .pacman:
        return NVActivityIndicatorAnimationPacman()
    case .semiCircleSpin:
        return NVActivityIndicatorAnimationSemiCircleSpin()
    case .squareSpin:
        return NVActivityIndicatorAnimationSquareSpin()
    case .triangleSkewSpin:
        return NVActivityIndicatorAnimationTriangleSkewSpin()
    case .lineSpinFadeLoader:
        return NVActivityIndicatorAnimationLineSpinFadeLoader()
    }
}
