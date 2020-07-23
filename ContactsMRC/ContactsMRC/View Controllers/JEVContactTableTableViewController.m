//
//  JEVContactTableTableViewController.m
//  ContactsMRC
//
//  Created by Joe Veverka on 7/23/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

#import "JEVContact.h"
#import "JEVContactController.h"
#import "JEVContactDetailViewController.h"
#import "JEVContactTableTableViewController.h"

@interface JEVContactTableTableViewController ()


// Create Controller instance of controller in our VC (kind of unclear on "retain". need to do some reasearch)
@property (nonatomic, retain) JEVContactController *contactController;

@end

@implementation JEVContactTableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
  
    
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 
}


@end
