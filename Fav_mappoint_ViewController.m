//
//  Fav_mappoint_ViewController.m
//  TEQWIN_PROJECT
//
//  Created by Teqwin on 5/8/14.
//  Copyright (c) 2014年 Teqwin. All rights reserved.
//
#import "SWRevealViewController.h"
#import "Fav_mappoint_ViewController.h"
#import "FavDataManager.h"
#import "Venue.h"
@import CoreData;
#import "Fav_Map_ViewController.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "DetailFavViewController.h"
@interface Fav_mappoint_ViewController ()

@end

@implementation Fav_mappoint_ViewController

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
    self.title=[self.data valueForKey:@"name"];

    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewDidAppear:(BOOL)animated
{
    // Create coordinates from location lat/long
    
    CLLocationCoordinate2D poiCoodinates;
    poiCoodinates.latitude = [[self.data valueForKey:@"latitude"] doubleValue];
    poiCoodinates.longitude= [[self.data valueForKey:@"longitude"] doubleValue];
    // Zoom to region
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(poiCoodinates, 750, 750);
    
    [self.mymap setRegion:viewRegion animated:YES];
    
    // Plot pin
    MKPointAnnotation *pin = [[MKPointAnnotation alloc] init];
    
    pin.title =[self.data valueForKey:@"name"];
    pin.subtitle=[self.data valueForKey:@"address"];
    pin.coordinate = poiCoodinates;
    [self.mymap addAnnotation:pin];
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"favgogoogle"]) {
        if ([segue.destinationViewController isKindOfClass:[Fav_Map_ViewController  class]]){
            // Get reference to the destination view controller
            Fav_Map_ViewController *detailVC = segue.destinationViewController;
            // Set the property to the selected location so when the view for
            // detail view controller loads, it can access that property to get the feeditem obj
            detailVC.data = _data;
            
            ;
            
        }
        else
        {}
    }
    
    
    
}

@end
