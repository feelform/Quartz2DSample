//
//  SeconExamView.m
//  Quartz2DSample
//
//  Created by Yongseok Kang on 6/18/12.
//  Copyright (c) 2012 NHN. All rights reserved.
//

#import "SecondExamView.h"

@implementation SecondExamView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();

    CGGradientRef myGradient;
    CGColorSpaceRef myColorspace;
    size_t num_locations = 2;
    CGFloat locations[] = { 0.0, 1.0 };
    CGFloat components[] = { 0.0, 0.0, 0.0, 1.0,
                              0.0, 0.0, 0.0, 0.0 };

    myColorspace = CGColorSpaceCreateDeviceRGB();
    myGradient = CGGradientCreateWithColorComponents (myColorspace, components,
                              locations, num_locations);

    CGPoint myStartPoint, myEndPoint;
    myStartPoint.x = 1.0;
    myStartPoint.y = 0.0;
    myEndPoint.x = 1.0;
    myEndPoint.y = 20;
    CGContextDrawLinearGradient (context, myGradient, myStartPoint, myEndPoint, 0);

    CGColorSpaceRelease (myColorspace);
    CGGradientRelease(myGradient);
}

@end
