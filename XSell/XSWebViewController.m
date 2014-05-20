//
//  XSWebViewController.m
//  XSell
//
//  Created by Fahad Ahmed on 20/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import "XSWebViewController.h"

@interface XSWebViewController ()

@end

@implementation XSWebViewController
@synthesize urlLink, viewWeb;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSURL *urlWeb = [NSURL URLWithString:urlLink];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:urlWeb];
    [viewWeb loadRequest:requestObj];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchback:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}
@end
