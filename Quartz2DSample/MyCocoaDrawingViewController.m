//
//  MyCocoaDrawingViewController.m
//  Quartz2DSample
//
//  Created by Yongseok Kang on 6/15/12.
//  Copyright (c) 2012 feelform. All rights reserved.
//

#import "MyCocoaDrawingViewController.h"
#import "FistExamView.h"
#import "SecondExamView.h"
#import "ColoredPatternExamView.h"

@interface MyCocoaDrawingViewController ()

@end

@implementation MyCocoaDrawingViewController
@synthesize fistExamView;
@synthesize secondExamView;
@synthesize coloredPatternView;


- (void)tapFirst {
    fistExamView.hidden = NO;
    secondExamView.hidden = YES;
    coloredPatternView.hidden = YES;
}

- (void)tapSecond {
    fistExamView.hidden = YES;
    secondExamView.hidden = NO;
    coloredPatternView.hidden = YES;
}

- (void)tapThird {
    fistExamView.hidden = YES;
    secondExamView.hidden = YES;
    coloredPatternView.hidden = NO;
}

- (void)loadView {
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];

    self.fistExamView = [[FistExamView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame),
            CGRectGetHeight(self.view.frame) - 50)];
    fistExamView.hidden = YES;
    [self.view addSubview:fistExamView];

    self.secondExamView = [[SecondExamView alloc] initWithFrame:self.view.bounds];
    secondExamView.hidden = YES;
    [self.view addSubview:secondExamView];

    self.coloredPatternView = [[ColoredPatternExamView alloc] initWithFrame:self.view.bounds];
    coloredPatternView.hidden = YES;
    [self.view addSubview:coloredPatternView];

    UIButton *firstExam = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    firstExam.frame = CGRectMake(10, CGRectGetHeight(self.view.frame) - 40, 40, 30);
    [firstExam setTitle:@"첫번째" forState:UIControlStateNormal];
    [firstExam addTarget:self action:@selector(tapFirst) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:firstExam];

    UIButton *secondExam = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    secondExam.frame = CGRectMake(CGRectGetMaxX(firstExam.frame) + 10, CGRectGetHeight(self.view.frame) - 40, 40, 30);
    [secondExam setTitle:@"두번째" forState:UIControlStateNormal];
    [secondExam addTarget:self action:@selector(tapSecond) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:secondExam];

    UIButton *thirdExam = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    thirdExam.frame = CGRectMake(CGRectGetMaxX(secondExam.frame) + 10, CGRectGetMaxY(secondExam.frame) - 30, 40, 30);
    [thirdExam addTarget:self action:@selector(tapThird) forControlEvents:UIControlEventTouchUpInside];
    [thirdExam setTitle:@"세번째" forState:UIControlStateNormal];

    [self.view addSubview:thirdExam];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
