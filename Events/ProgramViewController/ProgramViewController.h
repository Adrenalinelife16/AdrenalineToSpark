//
//  ProgramViewController.h
//  Events
//
//  Created by Chazz Romeo, Michael Cather.
//  Copyright (c) 2017 Adrenaline Life. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "EventList.h"




@interface ProgramViewController : UITableViewController <CLLocationManagerDelegate>

@property (nonatomic, retain) NSString *filterText;
@property (nonatomic, retain) NSString *sliderDistance;
@property (strong, nonatomic) EventList *eventObjDistance;

@property (strong, nonatomic) IBOutlet UIView *searchBarView;



-(IBAction)createEvent:(id)sender;

-(IBAction)filterDay:(id)sender;

-(void)filterProgramArray;

@end
