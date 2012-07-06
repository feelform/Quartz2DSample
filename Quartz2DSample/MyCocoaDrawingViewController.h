//
//  MyCocoaDrawingViewController.h
//  Quartz2DSample
//
//  Created by Yongseok Kang on 6/15/12.
//  Copyright (c) 2012 feelform. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FistExamView;
@class SecondExamView;
@class ColoredPatternExamView;

@interface MyCocoaDrawingViewController : UIViewController {
    FistExamView *fistExamView;
    SecondExamView *secondExamView;
    ColoredPatternExamView *coloredPatternView;
}
@property(nonatomic, strong) FistExamView *fistExamView;
@property(nonatomic, strong) SecondExamView *secondExamView;
@property(nonatomic, strong) ColoredPatternExamView *coloredPatternView;


@end
