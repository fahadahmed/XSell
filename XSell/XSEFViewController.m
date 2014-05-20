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
    _businessDescription.text = @"Equipment Finance can provide the funds to purchase or refinance equipment to assist business growth. Equipment Finance’s in-depth understanding of equipment values can also help businesses realise greater capital for restructures, expansions, mergers and acquisitions.";
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
