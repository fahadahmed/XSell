//
//  XSEFViewController.h
//  XSell
//
//  Created by Fahad Ahmed on 19/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ReaderViewController.h"

@interface XSEFViewController : UIViewController <ReaderViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextView *businessDescription;

- (IBAction)showBrochure:(id)sender;

@end
