//
// NaverSearch
//
//  Created by feelform on 6/28/12.
// Copyright (c) 2012 NHN. All rights reserved.
//


#import "ColoredPatternExamView.h"

void MyDrawColoredPattern (void *info, CGContextRef myContext);
#define H_PATTERN_SIZE 16
#define V_PATTERN_SIZE 18

@implementation ColoredPatternExamView
- (void)paintingCloredPattern:(CGContextRef)myContext rectangle:(CGRect)rect
{
    CGPatternRef pattern;
    CGColorSpaceRef patternSpace;

    float alpha = 1;

    static const CGPatternCallbacks callbacks = {0, &MyDrawColoredPattern, NULL};

    CGContextSaveGState(myContext);
    patternSpace = CGColorSpaceCreatePattern(NULL);
    CGContextSetFillColorSpace(myContext, patternSpace);
    CGColorSpaceRelease(patternSpace);

    pattern = CGPatternCreate(NULL, self.bounds, CGAffineTransformMake(1, 0, 0, 1, 0, 0),
            H_PATTERN_SIZE, V_PATTERN_SIZE, kCGPatternTilingConstantSpacing,
            true, &callbacks);

    CGContextSetFillPattern(myContext, pattern, &alpha);
    CGPatternRelease(pattern);
    CGContextFillRect(myContext, rect);
    CGContextRestoreGState(myContext);
}

@end

void MyDrawColoredPattern (void *info, CGContextRef myContext) {
    float subunit = 5; // the pattern cell itself is 16 by 18

    CGRect  myRect1 = {{0,0}, {subunit, subunit}},
            myRect2 = {{subunit, subunit}, {subunit, subunit}},
            myRect3 = {{0,subunit}, {subunit, subunit}},
            myRect4 = {{subunit,0}, {subunit, subunit}};

    CGContextSetRGBFillColor (myContext, 0, 0, 1, 0.5);
    CGContextFillRect (myContext, myRect1);
    CGContextSetRGBFillColor (myContext, 1, 0, 0, 0.5);
    CGContextFillRect (myContext, myRect2);
    CGContextSetRGBFillColor (myContext, 0, 1, 0, 0.5);
    CGContextFillRect (myContext, myRect3);
    CGContextSetRGBFillColor (myContext, .5, 0, .5, 0.5);
    CGContextFillRect (myContext, myRect4);
}