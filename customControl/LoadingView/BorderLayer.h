//
//  BorderLayer.h
//  customControl
//
//  Created by Aleix Guri on 1/9/18.
//  Copyright © 2018 Aleix Guri. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

@interface BorderLayer : CALayer
@property (nonatomic, assign) IBInspectable CGFloat endValue;
@property (nonatomic, strong) UIColor *lineColor;
@end
