//
//  XSEFTestimonialViewController.m
//  XSell
//
//  Created by Fahad Ahmed on 19/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import "XSEFTestimonialViewController.h"
#import "XSVideoViewController.h"

@interface XSEFTestimonialViewController ()

@end

@implementation XSEFTestimonialViewController

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

- (IBAction)videoOne:(id)sender {
    [self performSegueWithIdentifier:@"showEFVideoOne" sender:self];
}

- (IBAction)videoTwo:(id)sender {
    [self performSegueWithIdentifier:@"showEFVideoTwo" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"%@", segue.identifier);
    if ([segue.identifier isEqualToString:@"showEFVideoOne"]) {
        
         NSLog(@"1111%@", segue.identifier);
        UINavigationController *navController = (UINavigationController *)[segue destinationViewController];
         NSLog(@"222%@", segue.identifier);
        XSVideoViewController *video = (XSVideoViewController *)[[navController viewControllers] lastObject];
         NSLog(@"3333%@", segue.identifier);
        video.videoURL = @"Grant-Burge-Testimonial.mp4";
    }
    if ([segue.identifier isEqualToString:@"showEFVideoTwo"]) {
        UINavigationController *navController = (UINavigationController *)[segue destinationViewController];
        XSVideoViewController *video = (XSVideoViewController *)[[navController viewControllers] lastObject];
        video.videoURL = @"http://youtu.be/LzQrESiZwWY";
    }
}
@end
