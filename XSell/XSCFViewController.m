//
//  XSCFViewController.m
//  XSell
//
//  Created by Fahad Ahmed on 20/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import "XSCFViewController.h"

@interface XSCFViewController ()

@end

@implementation XSCFViewController

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
    _businessDescription.text = @" Corporate Finance is a leading provider of cash flow and asset backed lending products. Its business verticals of Debtor Finance, Corporate Lending, Leverage & Sponsor and Aviation Finance provide working capital solutions, senior term debt facilities and flexible lease structures that help mid-market businesses grow.";
    [_businessDescription setFont:[UIFont systemFontOfSize:20.0f]];
    _businessDescription.textAlignment = NSTextAlignmentJustified;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showBrochure:(id)sender {
    NSString *file = [[NSBundle mainBundle] pathForResource:@"brochure_CF_DebtorFinance" ofType:@"pdf"];
    
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
