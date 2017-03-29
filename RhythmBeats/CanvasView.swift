//
//  CanvasView.swift
//  RhythmBeats
//
//  Created by LiJing on 3/13/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var x: CGFloat = 0, y: CGFloat = 0, r: CGFloat = 10
    //var x2: CGFloat = 0, y2: CGFloat = 0
    //var x3: CGFloat = 0, y3: CGFloat = 0
    //var x4: CGFloat = 0, y4: CGFloat = 0
    var velocity: CGFloat = 2
    var dx: CGFloat = 1, dy: CGFloat = 8
    var done = false
    
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            context.setLineWidth(2)
            context.setStrokeColor(UIColor.blue.cgColor)
            context.move(to: CGPoint(x: 110, y: 0))
            context.addLine(to: CGPoint(x: 60, y: 400))
            context.strokePath()
            context.move(to: CGPoint(x: 170, y: 0))
            context.addLine(to: CGPoint(x: 120, y: 400))
            context.strokePath()
            context.move(to: CGPoint(x: 230, y: 0))
            context.addLine(to: CGPoint(x: 180, y: 400))
            context.strokePath()
            context.move(to: CGPoint(x: 290, y: 0))
            context.addLine(to: CGPoint(x: 240, y: 400))
            context.strokePath()
            
            context.setFillColor(UIColor.orange.cgColor)
            let rect5 = CGRect(x: 37, y:380 , width: 46, height: 40)
            context.strokeEllipse(in: rect5)
            context.fillEllipse(in: rect5)
            let rect6 = CGRect(x: 97, y:380 , width: 46, height: 40)
            context.strokeEllipse(in: rect6)
            context.fillEllipse(in: rect6)
            let rect7 = CGRect(x: 157, y:380 , width: 46, height: 40)
            context.strokeEllipse(in: rect7)
            context.fillEllipse(in: rect7)
            let rect8 = CGRect(x: 217, y:380 , width: 46, height: 40)
            context.strokeEllipse(in: rect8)
            context.fillEllipse(in: rect8)
            
            context.setFillColor(UIColor.purple.cgColor)
            let rect = CGRect(x: x - r, y: y - r, width: 2 * r, height: 2 * r)
            context.fillEllipse(in: rect)
    
        }
        if !done {
            DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(15)) {
                self.update()
            }
        }
        
        
    }
    
    func start1(){
        x=110
        y=0
        done = false
        self.setNeedsDisplay()
    }
    
    func start2(){
        x=170
        y=0
        done = false
        self.setNeedsDisplay()
    }
    
    func stop(){
        done=true
    }
    func update(){
        x -= dx * velocity
        y += dy * velocity
        if y>400 {
            self.stop()
        }
        self.setNeedsDisplay()
    }

}
