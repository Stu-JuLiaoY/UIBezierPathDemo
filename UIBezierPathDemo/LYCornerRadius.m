//
//  LYCornerRadius.m
//  UIBezierPathDemo
//
//  Created by JuLiaoyuan on 2016/11/8.
//  Copyright © 2016年 J.L.Y. All rights reserved.
//

#import "LYCornerRadius.h"

@implementation LYCornerRadius


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    UIBezierPath *aPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(MERGIN, MERGIN, WIDTH, HEIGHT) cornerRadius:5.f];
    UIColor *aStroke = [UIColor redColor];
    [aStroke setStroke];
    [aPath stroke];
    
    UIBezierPath *bPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(MERGIN * 2 + WIDTH, MERGIN, WIDTH, HEIGHT) cornerRadius:5.f];
    UIColor *bStroke = [UIColor yellowColor];
    [bStroke setFill];
    [bPath fill];
    
    UIBezierPath *cPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(MERGIN * 3 + WIDTH * 2, MERGIN, WIDTH, HEIGHT) cornerRadius:5.f];
    cPath.lineWidth = 5.f;
    UIColor *cStroke = [UIColor redColor];
    [cStroke setStroke];
    [cPath stroke];
    
    UIColor *cFill = [UIColor yellowColor];
    [cFill setFill];
    [cPath fill];
    
    UIBezierPath *dPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(MERGIN, MERGIN * 2 + HEIGHT, WIDTH, HEIGHT) byRoundingCorners:UIRectCornerTopLeft cornerRadii:CGSizeMake(5, 5)];
    dPath.lineWidth = 5.f;
    UIColor *dStroke = [UIColor redColor];
    [dStroke setStroke];
    [dPath stroke];
    
    UIBezierPath *ePath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(MERGIN, MERGIN * 3 + HEIGHT * 2, WIDTH, HEIGHT)];
    [[UIColor purpleColor] setStroke];
    [ePath stroke];
    
    UIBezierPath *fPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(MERGIN * 2 + WIDTH, MERGIN * 3 + HEIGHT * 2, WIDTH, HEIGHT / 2)];
    [[UIColor brownColor] setStroke];
    [fPath stroke];
}


@end
