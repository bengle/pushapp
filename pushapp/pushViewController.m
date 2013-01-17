//
//  pushViewController.m
//  pushapp
//
//  Created by bengle on 13-1-6.
//  Copyright (c) 2013年 bengle. All rights reserved.
//
#import "pushViewController.h"
#define IS_IPHONE_5 (fabs((double)[[UIScreen mainScreen] bounds].size.height-(double)568 ) < DBL_EPSILON ) 


@interface pushViewController ()

@end

@implementation pushViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    if (IS_IPHONE_5) {
        webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
    } else {
        webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    }
    
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://bengle.ap01.aws.af.cm/"]];
    [self.view addSubview: webView];
    [webView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
