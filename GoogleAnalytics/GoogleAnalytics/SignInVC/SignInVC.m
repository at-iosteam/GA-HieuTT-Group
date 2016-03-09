//
//  SignInVC.m
//  GoogleAnalytics
//
//  Created by Nguyen Quang Manh on 3/8/16.
//  Copyright © 2016 Asiantech. All rights reserved.
//

#import "SignInVC.h"
#import <Google/Analytics.h>
@interface SignInVC () {
    
    __weak IBOutlet UITextField *email;
    __weak IBOutlet UITextField *password;
}

@end

@implementation SignInVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Send Screen Name to GA
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker set:kGAIScreenName value:self.nibName];
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)signInByEmail:(id)sender {
}
- (IBAction)signInByFacebook:(id)sender {
}
- (IBAction)back:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end
