//
//  XSEFViewController.m
//  XSell
//
//  Created by Fahad Ahmed on 19/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import "XSEFViewController.h"
#import <PDFTouch/PDFTouch.h>

@interface XSEFViewController () <YLPDFViewControllerDelegate> {
    YLDocument *_document;
}
@property (nonatomic, readonly) YLDocument *document;

- (void)modalPushView;

@end

@implementation XSEFViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
