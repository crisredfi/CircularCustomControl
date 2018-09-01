//
//  BorderLayer.m
//  customControl
//
//  Created by Aleix Guri on 1/9/18.
//  Copyright © 2018 Aleix Guri. All rights reserved.
//

#import "BorderLayer.h"

@implementation BorderLayer

- (void)drawInContext:(CGContextRef)ctx {
    
    CGFloat initValue =  - 0.5 * M_PI;
   // CGFloat end = (self.endValue * M_PI) - initValue;
    
    CGFloat lineWidth = 2.0;
    CGPoint center = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
    CGContextBeginPath(ctx);
    CGContextSetLineWidth(ctx, lineWidth);
    CGContextSetStrokeColorWithColor(ctx, self.lineColor.CGColor);
    CGContextAddArc(ctx, center.x, center.y, self.bounds.size.height/2 - lineWidth, initValue , self.endValue * M_PI + initValue, false);
    CGContextDrawPath(ctx, kCGPathStroke);
}

@end
