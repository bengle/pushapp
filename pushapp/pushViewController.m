//
//  pushViewController.m
//  pushapp
//
//  Created by bengle on 13-1-6.
//  Copyright (c) 2013年 bengle. All rights reserved.
//

#import "pushViewController.h"

@interface pushViewController ()

@end

@implementation pushViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://localhost:3000/faverate"]];
    [self.view addSubview: webView];
    [webView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
