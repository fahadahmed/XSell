//
//  XSVideoViewController.h
//  XSell
//
//  Created by Fahad Ahmed on 19/05/2014.
//  Copyright (c) 2014 GE Capital ANZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface XSVideoViewController : UIViewController {
    IBOutlet UIWebView *videoView;
    NSString *videoURL;
    NSString *videoHTML;
}
@property (nonatomic, strong) MPMoviePlayerController *mvplayer;

@property (nonatomic, strong) IBOutlet UIWebView *videoView;
@property (nonatomic, strong) NSString *videoURL;
@property (nonatomic, strong) NSString *videoHTML;

- (void)embedYouTube;
- (IBAction)switchback:(id)sender;

@end
