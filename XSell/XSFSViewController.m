//
//  XSFSViewController.m
//  XSell
//
//  Created by Fahad Ahmed on 20/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import "XSFSViewController.h"

@interface XSFSViewController ()

@end

@implementation XSFSViewController

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
    [self.navigationController.navigationBar setHidden:NO];
    _businessDescription.text = @"Custom Fleet is a leading provider of fleet finance for passenger vehicles, light and heavy commercial vehicles and fully integrated fleet management services. Combining vehicle management, finance and fuel purchasing, we help businesses optimise their fleets, from productivity through to managing environmental impacts. Custom Fleet experts provide strategic and industry insights and recommendations based on more than 30 year’s experience in fleet management.";
    [_businessDescription setFont:[UIFont systemFontOfSize:20.0f]];
    _businessDescription.textAlignment = NSTextAlignmentJustified;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showBrochure:(id)sender {
    NSString *file = [[NSBundle mainBundle] pathForResource:@"brochure_CF_Aviation" ofType:@"pdf"];
    
    ReaderDocument *document = [ReaderDocument withDocumentFilePath:file password:nil];
    if (document !=nil) {
        ReaderViewController *readerViewController = [[ReaderViewController alloc] initWithReaderDocument:document];
        readerViewController.delegate = self;
        readerViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        readerViewController.modalPresentationStyle = UIModalPresentationFullScreen;
        [self presentModalViewController:readerViewController animated:YES];
    }
}

- (void)dismissReaderViewController:(ReaderViewController *)viewController {
    [self dismissModalViewControllerAnimated:YES];
}

@end
