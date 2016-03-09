//
//  SignUpVC.m
//  GoogleAnalytics
//
//  Created by Nguyen Quang Manh on 3/8/16.
//  Copyright © 2016 Asiantech. All rights reserved.
//

#import "SignUpVC.h"
#import <Google/Analytics.h>

@interface SignUpVC ()
{
    __weak IBOutlet UITextField *email;
    
    __weak IBOutlet UITextField *password;
    __weak IBOutlet UITextField *passwordConfirm;
    __weak IBOutlet UISegmentedControl *sex;
    __weak IBOutlet UISegmentedControl *job;
}

@end

@implementation SignUpVC

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
- (IBAction)signUpByEmail:(id)sender {
    
    
    // Data send after sign up successfull
    NSString *jobUser = [job titleForSegmentAtIndex:job.selectedSegmentIndex];
    NSString *sexUser = [sex titleForSegmentAtIndex:sex.selectedSegmentIndex];
    
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    
    [tracker set:[GAIFields customDimensionForIndex:1] value: jobUser];
    [tracker set:[GAIFields customDimensionForIndex:2] value: sexUser];
    
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"UI_Action" action:@"Button_Press" label:@"SignUp_By_Email" value:nil] build]];
    
//    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
//    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"UI_Action"
//                                                          action:@"Button_Press"
//                                                           label:@"SignUp_By_Email"
//                                                           value:nil] build]];
    [self back:nil];
}
- (IBAction)signUpByFacebook:(id)sender {
    
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"UI_Action"
                                                          action:@"Button_Press"
                                                           label:@"SignUp_By_Facebook"
                                                           value:nil] build]];
    [self back:nil];
}

- (IBAction)back:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
    
}


@end
