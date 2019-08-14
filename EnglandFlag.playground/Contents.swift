import UIKit
import PlaygroundSupport

var rect = CGRect(x: 0, y: 0, width: 200, height: 134)
let backgroundView = UIView(frame: rect)
backgroundView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)

rect = CGRect(x: 0, y: 57, width: 200, height: 20)
let flagLine1 = UIView(frame: rect)
flagLine1.backgroundColor = UIColor.red

rect = CGRect(x: 90, y: 0, width: 20, height: 134)
let flagLine2 = UIView(frame: rect)
flagLine2.backgroundColor = UIColor.red

backgroundView.addSubview(flagLine1)
backgroundView.addSubview(flagLine2)

PlaygroundPage.current.liveView = backgroundView


