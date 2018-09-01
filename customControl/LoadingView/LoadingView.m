//
//  LoadingView.m
//  customControl
//
//  Created by Aleix Guri on 1/9/18.
//  Copyright © 2018 Aleix Guri. All rights reserved.
//

#import "LoadingView.h"
#import "BorderLayer.h"

@interface LoadingView()

@property (nonatomic, strong) BorderLayer *darkBorder;
@property (nonatomic, strong) BorderLayer *progressBorderLayer;

@end

@implementation LoadingView

- (void)updateEndValue:(CGFloat)newValue {
    self.progressBorderLayer.endValue = newValue;
    [self.progressBorderLayer setNeedsDisplay];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    LoadingView *view =  [super initWithCoder:aDecoder];
    [self loadFromNib];

    return view;
}

- (instancetype)initWithFrame:(CGRect)frame {
    LoadingView *view =  [super initWithFrame:frame];
    [self loadFromNib];
    
    return view;
}


- (void)loadFromNib {
  
    
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([self class]) bundle:bundle];
    UIView *myView = [[nib instantiateWithOwner:self options:nil] firstObject];
    
    myView.frame = self.bounds;
   myView.autoresizingMask = (UIViewAutoresizingFlexibleWidth |
                               UIViewAutoresizingFlexibleHeight);
    [self addSubview:myView];
    self.darkBorder = [[BorderLayer alloc] init];
    self.darkBorder.lineColor = [UIColor colorWithRed:134.0/255.0 green:133.0/255.0 blue:148.0/255.0 alpha:1.0];
    self.darkBorder.endValue = 2.0;
    [self.layer addSublayer:self.darkBorder];
    self.progressBorderLayer = [[BorderLayer alloc] init];
    self.progressBorderLayer.lineColor = [UIColor colorWithRed:158.0/255.0 green:207.0/255.0 blue:45.0/255.0 alpha:1.0];
    [self.layer addSublayer:self.progressBorderLayer];

}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.darkBorder.frame = self.bounds;
    [self.darkBorder setNeedsDisplay];
    self.progressBorderLayer.frame = self.bounds;
    [self.progressBorderLayer setNeedsDisplay];

    
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect {
//    // Drawing code
//}

@end
