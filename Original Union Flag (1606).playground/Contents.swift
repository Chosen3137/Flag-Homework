import UIKit
import PlaygroundSupport

var rect = CGRect(x: 0, y: 0, width: 200, height: 134)
let backgroundView = UIView(frame: rect)
backgroundView.backgroundColor = UIColor(red: 0, green: 102/255, blue: 204/255, alpha: 1)

rect = CGRect(x: 0, y: 57, width: 200, height: 20)
let flagLine1 = UIView(frame: rect)
flagLine1.backgroundColor = UIColor.red

rect = CGRect(x: 90, y: 0, width: 20, height: 134)
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

backgroundView.layer.addSublayer(frameLayer1)
backgroundView.layer.addSublayer(frameLayer2)
backgroundView.addSubview(flagLine3)
backgroundView.addSubview(flagLine4)
backgroundView.addSubview(flagLine1)
backgroundView.addSubview(flagLine2)

PlaygroundPage.current.liveView = backgroundView


