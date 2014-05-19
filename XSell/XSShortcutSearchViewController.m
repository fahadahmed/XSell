//
//  XSShortcutSearchViewController.m
//  XSell
//
//  Created by Fahad Ahmed on 19/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import "XSShortcutSearchViewController.h"

@interface XSShortcutSearchViewController ()

@end

@implementation XSShortcutSearchViewController

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
    if ([_searchCriteria  isEqual: @"Tractors"]) {
        _searchResults = [NSArray arrayWithObjects:@"Equipment Finance",@"Corporate Finance", nil];
        NSLog(@"%@", _searchResults);
    }
    if ([_searchCriteria isEqual:@"Mining"]) {
        _searchResults = [NSArray arrayWithObjects:@"Equipment Finance", @"Fleet Solutions", @"Distribution Finance", nil];
        NSLog(@"%@", _searchResults);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = [_searchResults objectAtIndex:indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_searchResults count];
}

/*
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if ([cell.textLabel.text isEqual:@"Equipment Finance"]) {
        _business = @"showEquipmentFinance";
    }
}*/
@end
