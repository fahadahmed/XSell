//
//  XSHomeViewController.h
//  XSell
//
//  Created by Fahad Ahmed on 19/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XSHomeViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView *tblContactList;

@end
