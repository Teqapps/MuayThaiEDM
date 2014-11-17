//
//  PopupViewController.h
//  TEQWIN_PROJECT_Muay_Match
//
//  Created by Teqwin on 17/11/14.
//  Copyright (c) 2014年 Teqwin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TattooMasterCell.h"
@interface PopupViewController : UIViewController
@property (nonatomic, strong) TattooMasterCell *tattoomasterCell;

@property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)button:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *teset;
@end
