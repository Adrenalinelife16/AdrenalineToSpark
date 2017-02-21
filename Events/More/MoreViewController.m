//
//  MoreViewController.m
//  Events
//
//  Created by Chazz Romeo, Michael Cather & Josh Martin.
//  Copyright (c) 2017 Adrenaline Life. All rights reserved.
//

#import "MoreViewController.h"
#import "LoginViewController.h"



@interface MoreViewController ()



@end

@implementation MoreViewController


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    moreArray = [[NSMutableArray alloc] initWithObjects:@"Policy Agreement", @"Terms & Conditions", @"Settings", nil];
    [self checkLogin];
}

-(void)viewWillAppear
{
    [super viewWillAppear:YES];
    [self checkLogin];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Check login for MyFavorite and MyTickets
-(void)checkLogin
{
    NSString *strUserID     =   [NSString stringWithFormat:@"%@",[Utility getNSUserDefaultValue:KUSERID]];
    if ([strUserID length]>0 && ![strUserID isKindOfClass:[NSNull class]] && ![strUserID isEqualToString:@"(null)"])  {
        NSLog(@"User ID is %@", strUserID);
        [moreArray addObject:@"Logout"];
        

    }
    else
    {
        [moreArray addObject:@"Login"];
    }
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
   
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [moreArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
       static NSString *simpleTableIdentifier = @"MoreCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    

    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
   
    
    cell.textLabel.text = [moreArray objectAtIndex:indexPath.row];
    [self checkLogin];
    return cell;
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    if (!(indexPath.section == 0)) {
        [self performSegueWithIdentifier:@"logoutPush" sender:self];
    }
    else if (!(indexPath.section == 1)) {
        [self performSegueWithIdentifier:@"logoutPush" sender:self];
    }
    else if (!(indexPath.section == 2)) {
        [self performSegueWithIdentifier:@"logoutPush" sender:self];
    }
    else if (!(indexPath.section == 3)) {
        [self performSegueWithIdentifier:@"logoutPush" sender:self];
    }

    
}




#pragma mark - Navigation
/*
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([segue.identifier isEqualToString:@"loginRegister"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        LoginViewController *destViewController = [segue destinationViewController];
        destViewController.getDetails = [moreArray objectAtIndex:indexPath.row];
        
    }

    
}

*/
@end
