//
//  MyCocoaDrawingView.m
//  Quartz2DSample
//
//  Created by Yongseok Kang on 6/15/12.
//  Copyright (c) 2012 feelform. All rights reserved.
//

#import "FistExamView.h"

@implementation FistExamView

#pragma mark - UIView
- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(context, 1, 0, 0, 1);
    CGContextFillRect(context, CGRectMake(0, 0, 200, 100));
    CGContextSetRGBFillColor(context, 0, 0, 1, .5);
    CGContextFillRect(context, CGRectMake(0, 0, 100, 200));
}


#pragma mark - alloc and dealloc
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

@end
