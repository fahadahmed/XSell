//
//  XSShortcutSearchViewController.h
//  XSell
//
//  Created by Fahad Ahmed on 19/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XSShortcutSearchViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSString *searchCriteria;
@property (nonatomic, strong) NSArray *searchResults;
@property (nonatomic, strong) NSString *business;
@end
