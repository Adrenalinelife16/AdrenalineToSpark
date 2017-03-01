//
//  DiscoverViewController.m
//  Events
//
//  Created by Lamar Artare on 2/27/17.
//  Copyright © 2017 Teknowledge Software. All rights reserved.
//

#import "DiscoverViewController.h"
#import "FeedDetailViewController.h"

@interface DiscoverViewController ()

@end

@implementation DiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)btnDiscoverCategories:(id)sender
{
    //FeedDetailViewController *feedDetailVwController = [segue destinationViewController];
    //feedDetailVwController.strFeedURL   =   [NSString stringWithFormat:@"http://www.adrenalinelife.org/soccer/"];
    
    //UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main_iPhone.storyboard" bundle:nil];
    //SearchResultsTableViewController *resultsController = [storyboard instantiateViewControllerWithIdentifier:@"SearchResults"];
    
}

#pragma mark - Navigation
// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
   
    
    
    FeedDetailViewController *feedDetailVwController = [segue destinationViewController];
    if ([[segue identifier] isEqualToString:@"soccer"]) {
        feedDetailVwController.strFeedURL   =   [NSString stringWithFormat:@"http://www.adrenalinelife.org/events/categories/soccer/"];
    }
    if ([[segue identifier] isEqualToString:@"basketball"]) {
        feedDetailVwController.strFeedURL   =   [NSString stringWithFormat:@"http://www.adrenalinelife.org/events/categories/basketball/"];
    }
    if ([[segue identifier] isEqualToString:@"tennis"]) {
        feedDetailVwController.strFeedURL   =   [NSString stringWithFormat:@"http://www.adrenalinelife.org/events/categories/tennis/"];
    }
    if ([[segue identifier] isEqualToString:@"kickball"]) {
        feedDetailVwController.strFeedURL   =   [NSString stringWithFormat:@"http://www.adrenalinelife.org/events/categories/kickball/"];
    }
    if ([[segue identifier] isEqualToString:@"tablegames"]) {
        feedDetailVwController.strFeedURL   =   [NSString stringWithFormat:@"http://www.adrenalinelife.org/events/categories/tablegames/"];
    }
    if ([[segue identifier] isEqualToString:@"fishing"]) {
        feedDetailVwController.strFeedURL   =   [NSString stringWithFormat:@"http://www.adrenalinelife.org/events/categories/bowfishing/"];
    }
    if ([[segue identifier] isEqualToString:@"yoga"]) {
        feedDetailVwController.strFeedURL   =   [NSString stringWithFormat:@"http://www.adrenalinelife.org/events/categories/yoga/"];
    }
    if ([[segue identifier] isEqualToString:@"frisbee"]) {
        feedDetailVwController.strFeedURL   =   [NSString stringWithFormat:@"http://www.adrenalinelife.org/events/categories/ultimate-frisbee/"];
    }
    if ([[segue identifier] isEqualToString:@"golf"]) {
        feedDetailVwController.strFeedURL   =   [NSString stringWithFormat:@"http://www.adrenalinelife.org/events/categories/golf/"];
    }
    if ([[segue identifier] isEqualToString:@"more"]) {
        feedDetailVwController.strFeedURL   =   [NSString stringWithFormat:@"http://www.adrenalinelife.org/events/categories/"];
    }
    
    
    
}

@end
