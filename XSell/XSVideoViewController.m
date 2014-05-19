//
//  XSVideoViewController.m
//  XSell
//
//  Created by Fahad Ahmed on 19/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import "XSVideoViewController.h"

@interface XSVideoViewController ()

@end

@implementation XSVideoViewController
@synthesize videoView, videoURL, videoHTML;

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
    NSLog(@"%@", videoURL);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)embedYouTube {
    NSURL *myURL = [NSURL URLWithString:videoURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:myURL];
    [[self videoView] loadRequest:request];
}
@end
