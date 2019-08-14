import UIKit
import PlaygroundSupport

var rect = CGRect(x: 0, y: 0, width: 200, height: 134)
let backgroundView = UIView(frame: rect)
backgroundView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)

let path1 = UIBezierPath()
path1.move(to: CGPoint(x: 0, y: 0))
path1.addLine(to: CGPoint(x: 9, y: 0))
path1.addLine(to: CGPoint(x: 200, y: 129))
path1.addLine(to: CGPoint(x: 200, y: 134))
path1.addLine(to: CGPoint(x: 191, y: 134))
path1.addLine(to: CGPoint(x: 0, y: 5))
path1.close()

let lineLayer1 = CAShapeLayer()
lineLayer1.path = path1.cgPath
lineLayer1.fillColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1).cgColor

let frameLayer1 = CALayer()
frameLayer1.frame = backgroundView.bounds
frameLayer1.backgroundColor = UIColor.red.cgColor
frameLayer1.mask = lineLayer1

let path2 = UIBezierPath()
path2.move(to: CGPoint(x: 0, y: 134))
path2.addLine(to: CGPoint(x: 0, y: 129))
path2.addLine(to: CGPoint(x: 191, y: 0))
path2.addLine(to: CGPoint(x: 200, y: 0))
path2.addLine(to: CGPoint(x: 200, y: 5))
path2.addLine(to: CGPoint(x: 9, y: 134))
path2.close()

let lineLayer2 = CAShapeLayer()
lineLayer2.path = path2.cgPath
lineLayer2.fillColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1).cgColor

let frameLayer2 = CALayer()
frameLayer2.frame = backgroundView.bounds
frameLayer2.backgroundColor = UIColor.red.cgColor
frameLayer2.mask = lineLayer2
backgroundView.layer.addSublayer(frameLayer1)
backgroundView.layer.addSublayer(frameLayer2)

PlaygroundPage.current.liveView = backgroundView

