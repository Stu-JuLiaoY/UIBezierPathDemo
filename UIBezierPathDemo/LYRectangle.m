//
//  LYRectangle.m
//  UIBezierPathDemo
//
//  Created by JuLiaoyuan on 2016/11/7.
//  Copyright © 2016年 J.L.Y. All rights reserved.
//

#import "LYRectangle.h"

@implementation LYRectangle


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    /*使用的是UIGraphics的方法*/
    // 最简单的实心矩形
    [[UIColor blueColor] setFill];
    UIRectFill(CGRectMake(MERGIN, MERGIN, WIDTH, HEIGHT));
    
    // 最简单的空心矩形
    [[UIColor whiteColor] setStroke];
    UIRectFrame(CGRectMake(MERGIN * 2 + WIDTH, MERGIN, WIDTH, HEIGHT));
    
    /*使用贝赛尔曲线*/
    // 空心
    UIBezierPath *aPath = [UIBezierPath bezierPathWithRect:CGRectMake(MERGIN, MERGIN * 2 + HEIGHT, WIDTH, HEIGHT)];
    UIColor *aStroke = [UIColor redColor];
    [aStroke setStroke];
    aPath.lineWidth = 5.f;
    [aPath stroke];
    
    // 实心
    UIBezierPath *bPath = [UIBezierPath bezierPathWithRect:CGRectMake(MERGIN * 2 + WIDTH, MERGIN * 2 + HEIGHT, WIDTH, HEIGHT)];
    UIColor *bStroke = [UIColor yellowColor];
    [bStroke setFill];
    [bPath fill];
    
    // 实心+边框
    UIBezierPath *cPath = [UIBezierPath bezierPathWithRect:CGRectMake(MERGIN, MERGIN * 3 + HEIGHT * 2, WIDTH, HEIGHT)];
    UIColor *cStroke = [UIColor redColor]; // 设置画笔的颜色;
    cPath.lineWidth = 5.f;
    [cStroke setStroke];
    [cPath stroke];
    
    UIColor *yellowFill = [UIColor yellowColor]; // 设置填充色
    [yellowFill setFill];
    [cPath fill];
    
}


@end
