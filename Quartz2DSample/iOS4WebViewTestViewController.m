//
//  iOS4WebViewTestViewController.m
//  Quartz2DSample
//
//  Created by Yongseok Kang on 6/26/12.
//  Copyright (c) 2012 feelform. All rights reserved.
//

#import "iOS4WebViewTestViewController.h"

@interface iOS4WebViewTestViewController ()
- (void)createWebView;

- (void)loadNaverInWebView;

@end

@implementation iOS4WebViewTestViewController
@synthesize webView;

static const NSInteger HEIGHT = 44;

- (void)reloadNaver {
    [self createWebView];
    [self loadNaverInWebView];
}

- (void)createWebView {
    self.webView.hidden = YES;
    self.webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame) - HEIGHT)];
    [self.view addSubview:webView];
}

- (void)loadNaverInWebView {
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://m.naver.com"]]];
}

- (void)loadView {
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];

    UIButton *reloadView = [[UIButton alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(self.view.frame) - HEIGHT, CGRectGetWidth(self.view.frame),
    HEIGHT)];
    reloadView.backgroundColor = [UIColor blueColor];
    [reloadView addTarget:self action:@selector(reloadNaver) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:reloadView];

    [self createWebView];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadNaverInWebView];
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
