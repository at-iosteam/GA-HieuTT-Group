//
//  HomeVC.m
//  GoogleAnalytics
//
//  Created by Nguyen Quang Manh on 2/28/16.
//  Copyright © 2016 Asiantech. All rights reserved.
//

#import "HomeVC.h"
#import "SignInVC.h"
#import "SignUpVC.h"
#import <Google/Analytics.h>

@interface HomeVC () <UIAlertViewDelegate>
{
    UIAlertView *tutorialAlertView;
}
@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Send Screen Name to GA
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker set:kGAIScreenName value:self.nibName];
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];
    

    // Create AlertView
    tutorialAlertView = [[UIAlertView alloc] initWithTitle:@"Tutorial" message:@"Read Tutorial help you use Application easyly" delegate:self cancelButtonTitle:@"Skip" otherButtonTitles:@"Continue", nil];
    [tutorialAlertView show];
    
}

- (void) viewWillAppear:(BOOL)animated {
    // Add dimension to track Time Use Application
    id<GAITracker> trackerTimeUseApp = [[GAI sharedInstance] defaultTracker];
    [trackerTimeUseApp set:[GAIFields customDimensionForIndex:3] value: [self partsOfTheDay]];
    [trackerTimeUseApp send:[[GAIDictionaryBuilder createScreenView] build]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didSelectSignIn:(id)sender {
    
    SignInVC *signInVC = [[SignInVC alloc] init];
    [self.navigationController pushViewController:signInVC animated:YES];
    
}

- (IBAction)didSelectSignUp:(id)sender {
    
    SignUpVC *signUpVC = [[SignUpVC alloc] init];
    [self.navigationController pushViewController:signUpVC animated:YES];
    
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    
    if (buttonIndex == 0) {
        NSLog(@"Press Skip");
    } else {
        NSLog(@"Press Continue");
    }
    
}

- (NSString*) partsOfTheDay{
    
    NSArray *partsOfTheDay = [[NSArray alloc] initWithObjects:@"Afternoon", @"Evening", @"Morning", @"Night", nil];
    return  [partsOfTheDay objectAtIndex: arc4random() % 3];
    
}

@end
