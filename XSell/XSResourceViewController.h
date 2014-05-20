//
//  XSResourceViewController.h
//  XSell
//
//  Created by Fahad Ahmed on 20/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ReaderViewController.h"

@interface XSResourceViewController : UIViewController <ReaderViewControllerDelegate>
- (IBAction)showAccessGE:(id)sender;
- (IBAction)showMidMarket:(id)sender;

- (IBAction)createCBLSForm:(id)sender;
@end
