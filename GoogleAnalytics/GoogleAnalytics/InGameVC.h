//
//  InGameVC.h
//  GoogleAnalytics
//
//  Created by Nguyen Quang Manh on 3/1/16.
//  Copyright © 2016 Asiantech. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum
{
    DifficultyEasy = 1,
    DifficultyMedium,
    DifficultyHard
} Difficulty;

@interface InGameVC : UIViewController

@property NSInteger level;
@property Difficulty difficulty;

@end
