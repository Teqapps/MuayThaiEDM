//
//  PopupViewController.m
//  TEQWIN_PROJECT_Muay_Match
//
//  Created by Teqwin on 17/11/14.
//  Copyright (c) 2014年 Teqwin. All rights reserved.
//

#import "PopupViewController.h"
#import "detail_news_ViewController.h"
@interface PopupViewController ()

@end

@implementation PopupViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
     self.hidesBottomBarWhenPushed = YES;
  [self.navigationController setNavigationBarHidden:YES animated:YES];
    self.teset.text =self.tattoomasterCell.name;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)button:(id)sender {
    detail_news_ViewController * mapVC = [self.storyboard instantiateViewControllerWithIdentifier:@"detail_news_ViewController"];
    [self.navigationController pushViewController:mapVC animated:YES];
    
 
    TattooMasterCell *tattoomasterCell = [[TattooMasterCell alloc] init];
    //tattoomasterCell.clickindexpath =[self.tableView indexPathForRowAtPoint:correctedPoint];
    tattoomasterCell.clickindexpath =0;
    
    tattoomasterCell.object_id = self.tattoomasterCell.object_id;
    tattoomasterCell.boxer_id = self.tattoomasterCell.boxer_id;
    tattoomasterCell.boxer_name = self.tattoomasterCell.boxer_name;
    tattoomasterCell.view = self.tattoomasterCell.view;
    tattoomasterCell.imageFile=self.tattoomasterCell.imageFile;
   
    mapVC.tattoomasterCell = tattoomasterCell;
    
    
    // NSLog(@"%@",[object objectForKey:@"Boxer_2_id"]);
   

}
@end
