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
    
    webView.scalesPageToFit =YES;
    [webView setDelegate:self];
    
    
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://bengle.ap01.aws.af.cm/"]];
    [self.view addSubview: webView];
    
    [webView loadRequest:request];

    if (IS_IPHONE_5) {
        UIImage *image = [UIImage imageNamed:@"Default-568h.png"];
        imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 548)];
        //imageView.contentMode=UIViewContentModeRedraw;
        imageView.image = image;
    } else {
        UIImage *image = [UIImage imageNamed:@"Default.png"];
        imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
        //imageView.contentMode=UIViewContentModeRedraw;
        imageView.image = image;
    }
    
    [imageView setBackgroundColor:[UIColor grayColor]];
    
    
    [self.view addSubview: imageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    imageView.hidden = TRUE;
}

@end
