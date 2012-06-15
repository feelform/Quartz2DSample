//
//  MyCocoaDrawingViewController.m
//  Quartz2DSample
//
//  Created by Yongseok Kang on 6/15/12.
//  Copyright (c) 2012 NHN. All rights reserved.
//

#import "MyCocoaDrawingViewController.h"
#import "MyCocoaDrawingView.h"

@interface MyCocoaDrawingViewController ()

@end

@implementation MyCocoaDrawingViewController

- (void)loadView {
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];

    MyCocoaDrawingView *drawingView = [[MyCocoaDrawingView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:drawingView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

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
