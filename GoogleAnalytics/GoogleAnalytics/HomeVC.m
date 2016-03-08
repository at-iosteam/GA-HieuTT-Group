//
//  HomeVC.m
//  GoogleAnalytics
//
//  Created by Nguyen Quang Manh on 2/28/16.
//  Copyright © 2016 Asiantech. All rights reserved.
//

#import "HomeVC.h"
#import "LevelSelectVC.h"
#import <Google/Analytics.h>

@interface HomeVC ()

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker set:kGAIScreenName value:@"home"];
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didSelectPlayButton:(id)sender {
    
    LevelSelectVC *levelSelectVC = [[LevelSelectVC alloc] init];
    [self.navigationController pushViewController:levelSelectVC animated:YES];
}

- (IBAction)didSelectHelpButton:(id)sender {
}

- (IBAction)didSelectStoreButton:(id)sender {
}

- (IBAction)didSelectMusicButton:(id)sender {
}

- (IBAction)didSelectSoundButton:(id)sender {
}

- (IBAction)didSelectInformationButton:(id)sender {
}

- (IBAction)didSelectSettingButton:(id)sender {
}



@end
