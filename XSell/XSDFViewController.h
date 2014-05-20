//
//  XSDFViewController.h
//  XSell
//
//  Created by Fahad Ahmed on 20/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ReaderViewController.h"

@interface XSDFViewController : UIViewController <ReaderViewControllerDelegate>
@property (strong, nonatomic) IBOutlet UITextView *businessDescription;
@property (strong, nonatomic) IBOutlet UIImage *productsImage;
- (IBAction)showBrochure:(id)sender;
@end
