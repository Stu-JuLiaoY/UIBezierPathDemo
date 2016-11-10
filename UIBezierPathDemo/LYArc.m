//
//  LYArc.m
//  UIBezierPathDemo
//
//  Created by JuLiaoyuan on 2016/11/9.
//  Copyright © 2016年 J.L.Y. All rights reserved.
//

#import "LYArc.h"
//#import <math.h>

@implementation LYArc
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    UIBezierPath *aPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(100, 100) radius:50.f startAngle:0 endAngle:1 clockwise:YES];
    aPath.lineWidth = 5.f;
    aPath.lineCapStyle = kCGLineCapRound;
    [[UIColor redColor] setStroke];
    [aPath stroke];
    
    UIBezierPath *bPath = [UIBezierPath bezierPath];
    bPath.lineWidth = 5.f;
    bPath.lineCapStyle = kCGLineCapRound;
    [bPath moveToPoint:CGPointMake(100, 100)];
    [bPath addQuadCurveToPoint:CGPointMake(200, 100) controlPoint:CGPointMake(150, 0)];
    [[UIColor redColor] setStroke];
    [bPath stroke];
    
    UIBezierPath *cPath = [UIBezierPath bezierPath];
    cPath.lineWidth = 5.f;
    [[UIColor redColor] setStroke];
    [cPath moveToPoint:CGPointMake(200, 300)];
    [cPath addCurveToPoint:CGPointMake(300, 300) controlPoint1:CGPointMake(225, 200) controlPoint2:CGPointMake(275, 400)];
    [cPath stroke];
}


@end
