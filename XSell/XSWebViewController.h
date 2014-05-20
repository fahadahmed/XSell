//
//  XSWebViewController.h
//  XSell
//
//  Created by Fahad Ahmed on 20/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XSWebViewController : UIViewController
@property (nonatomic, strong) IBOutlet UIWebView *viewWeb;
@property (nonatomic, strong) NSString *urlLink;
- (IBAction)switchback:(id)sender;
@end
