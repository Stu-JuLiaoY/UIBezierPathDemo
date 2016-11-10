//
//  LYMutip.m
//  UIBezierPathDemo
//
//  Created by JuLiaoyuan on 2016/11/8.
//  Copyright © 2016年 J.L.Y. All rights reserved.
//

#import "LYAnomaly.h"

@implementation LYAnomaly


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    UIBezierPath *aPath = [UIBezierPath bezierPath];
    [aPath moveToPoint:CGPointMake(100, 100)];
    [aPath addLineToPoint:CGPointMake(200, 200)];
    [aPath addLineToPoint:CGPointMake(30, 300)];
    [aPath addLineToPoint:CGPointMake(100, 30)];
    [aPath closePath];
    aPath.lineWidth = 1.f;
    aPath.lineJoinStyle = kCGLineJoinBevel;
    aPath.lineCapStyle = kCGLineCapRound;
    [[UIColor redColor] setStroke];
    [aPath stroke];
    
}

@end
