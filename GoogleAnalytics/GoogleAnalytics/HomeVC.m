//
//  HomeVC.m
//  GoogleAnalytics
//
//  Created by Nguyen Quang Manh on 2/28/16.
//  Copyright © 2016 Asiantech. All rights reserved.
//

#import "HomeVC.h"
#import "LevelSelectVC.h"


@interface HomeVC ()

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
