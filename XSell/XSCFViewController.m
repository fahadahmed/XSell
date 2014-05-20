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
    _businessDescription.text = @" Turn your business assets into borrowing power. Whether it’s your debtor book, inventory or plant and equipment, we can help you unlock capital to support your business. Want specialised finance to support a buyout, acquisition, growth funding needs, refinancing or recapitalisation? We can Provide flexible and tailored finance to suit your needs. Bridge the gap between invoicing your customers and receiving payment to get fast and simple access to working capital. Use a cash flow loan to grow your business while maximising liquidity and flexibility.";
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
