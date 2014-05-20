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
    _businessDescription.text = @"Enable fleet leasing for your business not only allows you to free up capital and budget your expenses, it also means you can tailor your fleet requirements to your business goals and objectives. Our Fleet Management Services can help you Get you the most from your fleet. From identifying opportunities to reduce costs, to managing breakdowns and tracking performance, our global fleet management experience can help maximise your fleet efficiency. Attract and retain staff by offering them the option of a Novated Lease. With a Novated Leasing solution your staff can pick the car of their choice and have access to competitive fleet discounts..";
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
