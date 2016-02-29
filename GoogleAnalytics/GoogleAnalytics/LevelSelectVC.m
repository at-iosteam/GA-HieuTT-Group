//
//  LevelSelectVC.m
//  GoogleAnalytics
//
//  Created by Nguyen Quang Manh on 3/1/16.
//  Copyright © 2016 Asiantech. All rights reserved.
//

#import "LevelSelectVC.h"
#import "DifficultyChooseVC.h"


@interface LevelSelectVC ()

@end

@implementation LevelSelectVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)back:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (IBAction)didSelectStore:(id)sender {
}

- (IBAction)didSelectLevel:(UIButton *)sender {
    NSLog(@"Level is Selected : %ld", (long)sender.tag);
    DifficultyChooseVC *difficultyChooseVC = [[DifficultyChooseVC alloc] init];
    difficultyChooseVC.level = sender.tag;
    [self.navigationController pushViewController:difficultyChooseVC animated:YES];
}

@end
