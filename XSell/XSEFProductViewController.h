//
//  XSEFProductViewController.h
//  XSell
//
//  Created by Fahad Ahmed on 20/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XSEFProductViewController : UIViewController <UINavigationControllerDelegate> {
    IBOutlet UISegmentedControl *segmentControl;
    UIViewController *activeViewController;
    IBOutlet UIViewController *businessView;
    IBOutlet UIViewController *questionsView;
    NSArray *segmentViewControllers;
}

@property (nonatomic, strong) IBOutlet UISegmentedControl *segmentControl;
@property (nonatomic, strong) UIViewController *activeViewController;
@property (nonatomic, strong) NSArray *segmentViewControllers;
@property (nonatomic, strong) UIViewController *businessView;
@property (nonatomic, strong) UIViewController *questionsView;
- (IBAction)switchViews:(id)sender;
- (NSArray *)segmentViewControllerContent;
- (void)didChangeSegmentControl:(UISegmentedControl *)control;
@end
