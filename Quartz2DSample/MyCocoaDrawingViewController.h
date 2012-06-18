//
//  MyCocoaDrawingViewController.h
//  Quartz2DSample
//
//  Created by Yongseok Kang on 6/15/12.
//  Copyright (c) 2012 NHN. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FistExamView;
@class SecondExamView;

@interface MyCocoaDrawingViewController : UIViewController {
    FistExamView *fistExamView;
    SecondExamView *secondExamView;
}
@property(nonatomic, strong) FistExamView *fistExamView;
@property(nonatomic, strong) SecondExamView *secondExamView;

@end
