//
//  XSBusinessViewController.h
//  XSell
//
//  Created by Fahad Ahmed on 19/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XSBusinessViewController : UIViewController <UISearchBarDelegate>
@property (strong, nonatomic) IBOutlet UITextField *searchText;
@property (strong, nonatomic) NSString *textSearch;
- (IBAction)searchResults:(id)sender;


@end
