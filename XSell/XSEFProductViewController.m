//
//  XSEFProductViewController.m
//  XSell
//
//  Created by Fahad Ahmed on 20/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import "XSEFProductViewController.h"
#import "XSEFQuestionsViewController.h"
#import "XSEFViewController.h"

@interface XSEFProductViewController ()

@end

@implementation XSEFProductViewController
@synthesize segmentControl, activeViewController, segmentViewControllers, questionsView, businessView;

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
    self.segmentViewControllers = [self segmentViewControllerContent];
    [self.segmentControl addTarget:self action:@selector(didChangeSegmentControl:) forControlEvents:UIControlEventValueChanged];
    self.navigationItem.titleView = self.segmentControl;
    [self didChangeSegmentControl:self.segmentControl];
    self.activeViewController.view.frame = CGRectMake(0, 45,320,460);
    NSLog(@"New frame is: %@", NSStringFromCGRect([[self view] frame]));
    // Do any additional setup after loading the view.
}


- (void)didChangeSegmentControl:(UISegmentedControl *)control {
    if (self.activeViewController) {
        [self.activeViewController viewWillDisappear:NO];
        [self.activeViewController.view removeFromSuperview];
        [self.activeViewController viewDidDisappear:NO];
    }
    
    self.activeViewController = [self.segmentViewControllers objectAtIndex:control.selectedSegmentIndex];
    
    
    [self addChildViewController:self.activeViewController];
    [self.activeViewController viewWillAppear:NO];
    [self.view addSubview:self.activeViewController.view];
    //self.view.frame = CGRectMake(0, 0, 20, 20);
    [self.activeViewController viewDidAppear:NO];
    
    
    NSString * segmentTitle = [control titleForSegmentAtIndex:control.selectedSegmentIndex];
    self.navigationItem.backBarButtonItem  = [[UIBarButtonItem alloc] initWithTitle:segmentTitle style:UIBarButtonItemStylePlain target:nil action:nil];
}



- (NSArray *)segmentedViewControllerContent {
    UIViewController * controller1 = [[XSEFViewController alloc] init];
    UIViewController * controller2 = [[XSEFQuestionsViewController alloc] init];
    
    NSArray * controllers = [NSArray arrayWithObjects:controller1, controller2, nil];
    
    //[controller1 release];
    //[controller2 release];
    
    return controllers;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)switchViews:(id)sender{
    
    switch (segmentControl.selectedSegmentIndex) {
        case 0:
            NSLog(@"Month view");
            self.businessView = [[XSEFViewController alloc]init];
            //self.monthView.accessibilityFrame = CGRectMake(20, 120, 70, 70);
            //calendarView.frame = self.monthView.view.frame;
            //calendarView.autoresizingMask = self.monthView.view.autoresizingMask;
            break;
        case 1:
            NSLog(@"Day view");
            self.questionsView = [[XSEFQuestionsViewController alloc]init ];
            //calendarView.frame = self.dayView.view.frame;
            //calendarView.autoresizingMask = self.dayView.view.autoresizingMask;
            break;
            
        default:
            break;
    }
    
    
}

@end
