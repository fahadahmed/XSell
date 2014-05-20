//
//  XSResourceViewController.m
//  XSell
//
//  Created by Fahad Ahmed on 20/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import "XSResourceViewController.h"
#import "XSWebViewController.h"
#import <MessageUI/MessageUI.h>

@interface XSResourceViewController () <MFMailComposeViewControllerDelegate>

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

- (void)showActionSheetAccessGE:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"What do you want to do with the file?"
                                                             delegate:self
                                                    cancelButtonTitle:@"Cancel"
                                               destructiveButtonTitle:NULL
                                                    otherButtonTitles:@"Request Access", @"Multi-Customer Invite", @"1-on-1 Engagement", nil];
    [actionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    if ([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:@"Request Access"]) {
        NSString *emailTitle = @"Request Access to GE";
        NSLog(@"You Selected Request Access");
        [self showEmail:emailTitle];
    }
    
    if ([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:@"Multi-Customer Invite"]) {
        NSLog(@"You Selected Multi-Customer Invite");
        NSString *emailTitle = @"Multi-Customer Invite";
        [self showEmail:emailTitle];
    }
    
    if ([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:@"1-on-1 Engagement"]) {
        NSLog(@"You Selected 1-on-1 Engagement");
        NSString *emailTitle = @"Multi-Customer Invite";
        [self showEmail:emailTitle];
    }
    
}


- (void)showEmail:(NSString *)emailTitle {
    
    
    NSString *messageBody = @"Hey, check this out!";
    NSArray *toRecipents = [NSArray arrayWithObject:@"raymond.jeev.ge@gmail.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents];
    /*
     // Determine the file name and extension
     // NSArray *filepart = [file componentsSeparatedByString:@"."];
     // NSString *filename = [filepart objectAtIndex:0];
     // NSString *extension = [filepart objectAtIndex:1];
     
     // Get the resource path and read the file using NSData
     NSString *filePath = [[NSBundle mainBundle] pathForResource:filename ofType:extension];
     NSData *fileData = [NSData dataWithContentsOfFile:filePath];
     
     // Determine the MIME type
     NSString *mimeType;
     if ([extension isEqualToString:@"jpg"]) {
     mimeType = @"image/jpeg";
     } else if ([extension isEqualToString:@"png"]) {
     mimeType = @"image/png";
     } else if ([extension isEqualToString:@"doc"]) {
     mimeType = @"application/msword";
     } else if ([extension isEqualToString:@"ppt"]) {
     mimeType = @"application/vnd.ms-powerpoint";
     } else if ([extension isEqualToString:@"html"]) {
     mimeType = @"text/html";
     } else if ([extension isEqualToString:@"pdf"]) {
     mimeType = @"application/pdf";
     }
     
     // Add attachment
     [mc addAttachmentData:fileData mimeType:mimeType fileName:filename];
     */
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
    
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
