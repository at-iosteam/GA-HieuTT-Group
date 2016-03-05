//
//  InGameVC.m
//  GoogleAnalytics
//
//  Created by Nguyen Quang Manh on 3/1/16.
//  Copyright © 2016 Asiantech. All rights reserved.
//

#import "InGameVC.h"

@interface InGameVC ()
{
    
    __weak IBOutlet UIImageView *characterGame;
    NSMutableArray *stayImages, *hit1Image, *hit2Image;
    
    __weak IBOutlet UIImageView *pauseImage;
    __weak IBOutlet UIButton *playSmallButton;
    __weak IBOutlet UIButton *replayButton;
    __weak IBOutlet UIButton *menuButton;
    
}


@end

@implementation InGameVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self hidePause];
    
    // Init stay status.
    stayImages = [[NSMutableArray alloc] init];
    for (int i = 1; i <= 9; i++) {
        [stayImages addObject:[UIImage imageNamed: [NSString stringWithFormat:@"marthsingle_lord_sword-%d (dragged).tiff", i]]];
    }
    
    
    // Animation Hit 1
    hit1Image = [[NSMutableArray alloc] init];
    for (int i = 10; i <= 64; i++) {
        [hit1Image addObject:[UIImage imageNamed: [NSString stringWithFormat:@"marthsingle_lord_sword-%d (dragged).tiff", i]]];
    }
    
    
    // Animation Hit 2
    hit2Image = [[NSMutableArray alloc] init];
    for (int i = 1; i <= 81; i++) {
        [hit2Image addObject:[UIImage imageNamed: [NSString stringWithFormat:@"marthdouble_lord_sword-%d (dragged) 1.tiff", i]]];
    }

    
    [self stay];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) stay {
    
    characterGame.animationImages      = stayImages;
    characterGame.animationDuration    = 3;
    characterGame.animationRepeatCount = -1;
    characterGame.contentMode          = UIViewContentModeScaleAspectFill;
    
    [characterGame startAnimating];
    
}

- (void) hit1 {
    
    characterGame.animationImages      = hit1Image;
    characterGame.animationDuration    = 2;
    characterGame.animationRepeatCount = 1;
    characterGame.contentMode          = UIViewContentModeScaleAspectFill;
    
    [characterGame startAnimating];
    [self performSelector:@selector(animationDone) withObject:nil afterDelay:2];

}

- (void) hit2 {
    
    
    characterGame.animationImages      = hit2Image;
    characterGame.animationDuration    = 4;
    characterGame.animationRepeatCount = 1;
    characterGame.contentMode          = UIViewContentModeScaleAspectFill;
    
    [characterGame startAnimating];

    [self performSelector:@selector(animationDone) withObject:nil afterDelay:4];

    
}

- (void) showPause {
    
    // Show Pause
    pauseImage.hidden = NO;
    playSmallButton.hidden = NO;
    replayButton.hidden = NO;
    menuButton.hidden = NO;
    
}

- (void) hidePause {
    
    // Hide Pause
    pauseImage.hidden = YES;
    playSmallButton.hidden = YES;
    replayButton.hidden = YES;
    menuButton.hidden = YES;
    
}

- (void)animationDone {
    [self stay];
}

- (IBAction)didSelectHit1:(id)sender {
    
    [self hit1];
}

- (IBAction)didSelectHit2:(id)sender {
    
    [self hit2];
    
}
- (IBAction)didSelectStore:(id)sender {
}
- (IBAction)didSelectPause:(id)sender {
    
    [self showPause];
    
}
- (IBAction)didSelectSetting:(id)sender {
}
- (IBAction)didSelectPlay:(id)sender {
    
    [self hidePause];
}
- (IBAction)didSelectReplay:(id)sender {
    
    [self hidePause];

    
}
- (IBAction)didSelectMenu:(id)sender {
    
    [self hidePause];
    
}

@end
