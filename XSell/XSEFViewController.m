//
//  XSEFViewController.m
//  XSell
//
//  Created by Fahad Ahmed on 19/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import "XSEFViewController.h"

@interface XSEFViewController () {
    
}
@end

@implementation XSEFViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"PDFTouch SDK Demo";
        
        self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Examples" style:UIBarButtonItemStyleDone target:nil action:nil];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self.navigationController.navigationBar setHidden:NO];
    _businessDescription.text = @"If you’re a business looking to make an investment in equipment, we can Help you acquire essential business assets whilst helping to preserve the cash and liquidity you need to keep your business running smoothly. Leasing can Free up cash flow and provide an easy path to expanding and upgrading your equipment. It may also reduce the risks of ownership for your business and end of term asset disposal risks. Leverageing the untapped equity within your unencumbered plant and equipment to support cash flow challenges or to take advantage of opportunities makes sense for growth businesses. Selling your equipment to us through a Sale and Leaseback package gives you an immediate injection of funds and a simpler balance sheet position.Keeping up with advances in technology can be a challenge but with our Healthcare Equipment Finance you have flexibility to upgrade or add equipment when you need it.With over 30 years’ experience in Aviation Finance, we have deep expertise in aviation financing for individuals, corporations, aircraft resellers and charter companies.";
    [_businessDescription setFont:[UIFont systemFontOfSize:20.0f]];
    _businessDescription.textAlignment = NSTextAlignmentJustified;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*- (YLDocument *)document {
    if (_document == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Developers" ofType:@"pdf"];
        _document = [[YLDocument alloc] initWithFilePath:path];
        if (_document.isLocked) {
            [_document unlockWithPassword:@""];
        }
    }
    return _document;
}*/

- (void)showBrochure:(id)sender {
    NSString *file = [[NSBundle mainBundle] pathForResource:@"brochure_EF" ofType:@"pdf"];
    
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


/*
#pragma mark -
#pragma mark YLPDFViewControllerDelegate Methods
- (void)pdfViewController:(YLPDFViewController *)controller didDisplayDocument:(YLDocument *)document {
    NSLog(@"Did display document.");
}

- (void)pdfViewController:(YLPDFViewController *)controller willDismissDocument:(YLDocument *)document {
    NSLog(@"Will dismiss document.");
}

#pragma mark -
#pragma mark Private Methods

- (void)modalPDFView {
    YLPDFViewController *v = [[YLPDFViewController alloc] initWithDocument:self.document];
    [v setDelegate:self];
    [v setDocumentMode:YLDocumentModeSingle];
    [v setPageCurlEnabled:YES];
    [v setDocumentLead:YLDocumentLeadRight];
    [v setModalPresentationStyle:UIModalPresentationFullScreen];
    [v setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    [self.navigationController presentViewController:v animated:YES completion:nil];
}
*/

@end
