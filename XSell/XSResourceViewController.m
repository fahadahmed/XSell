//
//  XSResourceViewController.m
//  XSell
//
//  Created by Fahad Ahmed on 20/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import "XSResourceViewController.h"
#import "XSWebViewController.h"

@interface XSResourceViewController ()

@end

@implementation XSResourceViewController

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

- (IBAction)showAccessGE:(id)sender {
    NSString *file = [[NSBundle mainBundle] pathForResource:@"AccessGE" ofType:@"pdf"];
    
    ReaderDocument *document = [ReaderDocument withDocumentFilePath:file password:nil];
    if (document !=nil) {
        ReaderViewController *readerViewController = [[ReaderViewController alloc] initWithReaderDocument:document];
        readerViewController.delegate = self;
        readerViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        readerViewController.modalPresentationStyle = UIModalPresentationFullScreen;
        [self presentModalViewController:readerViewController animated:YES];
    }
}

- (IBAction)showMidMarket:(id)sender {
    NSString *file = [[NSBundle mainBundle] pathForResource:@"MidMarket" ofType:@"pdf"];
    
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

- (IBAction)showLinkAccessGE:(id)sender {
    [self performSegueWithIdentifier:@"showAccessGELink" sender:self];
}

- (IBAction)showLinkMidMarket:(id)sender {
    [self performSegueWithIdentifier:@"showMidMarketLink" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showAccessGELink"]) {
        
        UINavigationController *navController = (UINavigationController *)[segue destinationViewController];
        XSWebViewController *webView = (XSWebViewController *)[[navController viewControllers] lastObject];
        webView.urlLink = @"http://www.access.gecapital.com";
        
        
       
    }
    if ([segue.identifier isEqualToString:@"showMidMarketLink"]) {
        
        UINavigationController *navController = (UINavigationController *)[segue destinationViewController];
        XSWebViewController *webView = (XSWebViewController *)[[navController viewControllers] lastObject];
        webView.urlLink = @"http://www.google.com.au";
    }
}

@end