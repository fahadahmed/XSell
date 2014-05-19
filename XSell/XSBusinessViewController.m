//
//  XSBusinessViewController.m
//  XSell
//
//  Created by Fahad Ahmed on 19/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import "XSBusinessViewController.h"
#import "XSShortcutSearchViewController.h"

@interface XSBusinessViewController ()

@end

@implementation XSBusinessViewController

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


- (IBAction)searchResults:(id)sender {
   
    UIStoryboardSegue *segue = [[UIStoryboardSegue alloc] init];
    [self prepareForSegue:segue sender:sender];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showSearchResults"]) {
        
        XSShortcutSearchViewController *destViewController = segue.destinationViewController;
        destViewController.searchCriteria = _searchText.text;
        NSLog(@"%@", destViewController.searchCriteria);
    }
}
@end
