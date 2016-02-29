//
//  ChooseDifficultyVC.m
//  GoogleAnalytics
//
//  Created by Nguyen Quang Manh on 3/1/16.
//  Copyright © 2016 Asiantech. All rights reserved.
//

#import "DifficultyChooseVC.h"
#import "InGameVC.h"
@interface DifficultyChooseVC ()

@end

@implementation DifficultyChooseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didSelectDifficulty:(UIButton *)sender {
    
    InGameVC *inGame = [[InGameVC alloc] init];
    inGame.level = _level;
    inGame.difficulty = (int)sender.tag;
    [self.navigationController pushViewController:inGame animated:YES];
}


@end
