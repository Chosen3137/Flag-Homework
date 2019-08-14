import UIKit
import PlaygroundSupport

var rect = CGRect(x: 0, y: 0, width: 200, height: 134)
let backgroundView = UIView(frame: rect)
backgroundView.backgroundColor = UIColor(red: 0, green: 0, blue: 170/255, alpha: 1)

rect = CGRect(x: 0, y: 59, width: 200, height: 16)
let flagLine1 = UIView(frame: rect)
flagLine1.backgroundColor = UIColor.red

rect = CGRect(x: 92, y: 0, width: 16, height: 134)
let flagLine2 = UIView(frame: rect)
flagLine2.backgroundColor = UIColor.red

rect = CGRect(x: 0, y: 52, width: 200, height: 30)
let flagLine3 = UIView(frame: rect)
flagLine3.backgroundColor = UIColor.white

rect = CGRect(x: 85, y: 0, width: 30, height: 134)
let flagLine4 = UIView(frame: rect)
flagLine4.backgroundColor = UIColor.white

let path1 = UIBezierPath()
path1.move(to: CGPoint(x: 0, y: 0))
path1.addLine(to: CGPoint(x: 18, y: 0))
path1.addLine(to: CGPoint(x: 200, y: 119))
path1.addLine(to: CGPoint(x: 200, y: 134))
path1.addLine(to: CGPoint(x: 182, y: 134))
path1.addLine(to: CGPoint(x: 0, y: 15))
path1.close()

let lineLayer1 = CAShapeLayer()
lineLayer1.path = path1.cgPath
lineLayer1.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor

let frameLayer1 = CALayer()
frameLayer1.frame = backgroundView.bounds
frameLayer1.backgroundColor = UIColor.white.cgColor
frameLayer1.mask = lineLayer1

let path2 = UIBezierPath()
path2.move(to: CGPoint(x: 0, y: 134))
path2.addLine(to: CGPoint(x: 0, y: 119))
path2.addLine(to: CGPoint(x: 182, y: 0))
path2.addLine(to: CGPoint(x: 200, y: 0))
path2.addLine(to: CGPoint(x: 200, y: 15))
path2.addLine(to: CGPoint(x: 18, y: 134))
path2.close()

let lineLayer2 = CAShapeLayer()
lineLayer2.path = path2.cgPath
lineLayer2.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor

let frameLayer2 = CALayer()
frameLayer2.frame = backgroundView.bounds
frameLayer2.backgroundColor = UIColor.white.cgColor
frameLayer2.mask = lineLayer2

let irelandPath1 = UIBezierPath()
irelandPath1.move(to: CGPoint(x: 0, y: 0))
irelandPath1.addLine(to: CGPoint(x: 80, y: 52))
irelandPath1.addLine(to: CGPoint(x: 68, y: 52))
irelandPath1.addLine(to: CGPoint(x: 0, y: 10))
irelandPath1.close()

let irelandPath2 = UIBezierPath()
irelandPath2.move(to: CGPoint(x: 200, y: 0))
irelandPath2.addLine(to: CGPoint(x: 125, y: 52))
irelandPath2.addLine(to: CGPoint(x: 113, y: 52))
irelandPath2.addLine(to: CGPoint(x: 188, y: 0))
irelandPath2.close()

let irelandPath3 = UIBezierPath()
irelandPath3.move(to: CGPoint(x: 0, y: 134))
irelandPath3.addLine(to: CGPoint(x: 75, y: 82))
irelandPath3.addLine(to: CGPoint(x: 87, y: 82))
irelandPath3.addLine(to: CGPoint(x: 12, y: 134))
irelandPath3.close()

let irelandPath4 = UIBezierPath()
irelandPath4.move(to: CGPoint(x: 200, y: 134))
irelandPath4.addLine(to: CGPoint(x: 125, y: 82))
irelandPath4.addLine(to: CGPoint(x: 137, y: 82))
irelandPath4.addLine(to: CGPoint(x: 200, y: 124))
irelandPath4.close()

irelandPath1.append(irelandPath2)
irelandPath1.append(irelandPath3)
irelandPath1.append(irelandPath4)
let irelandLineLayer = CAShapeLayer()
irelandLineLayer.path = irelandPath1.cgPath
irelandLineLayer.fillColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1).cgColor

let irelandFrameLayer = CALayer()
irelandFrameLayer.frame = backgroundView.bounds
irelandFrameLayer.backgroundColor = UIColor.red.cgColor
irelandFrameLayer.mask = irelandLineLayer

backgroundView.layer.addSublayer(frameLayer1)
backgroundView.layer.addSublayer(frameLayer2)
backgroundView.layer.addSublayer(irelandLineLayer)



backgroundView.addSubview(flagLine3)
backgroundView.addSubview(flagLine4)
backgroundView.addSubview(flagLine1)
backgroundView.addSubview(flagLine2)

PlaygroundPage.current.liveView = backgroundView


