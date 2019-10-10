//
//  ViewController.m
//  WebViewDemo
//
//  Created by 赵前 on 2019/4/26.
//  Copyright © 2019年 赵前. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()<WKUIDelegate,WKNavigationDelegate>


@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
//    UIWebView *webView = [[UIWebView alloc]initWithFrame:self.view.frame];
//    webView.backgroundColor = [UIColor redColor];
//    [self.view addSubview:webView];
//
//    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com/"]]];
    WKWebView *webView = [[WKWebView alloc]initWithFrame:self.view.bounds];
    webView.UIDelegate = self;
    webView.navigationDelegate = self;
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com/"]]];
    [self.view addSubview:webView];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
