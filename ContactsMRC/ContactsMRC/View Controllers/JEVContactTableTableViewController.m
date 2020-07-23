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

// MARK: - Init

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self)
    {
        //MARK: TO DO
        [self setUp];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        [self setUp];
    }
    
    return self;
}

- (void)setUp {
    _contactController = [[JEVContactController alloc] init];
}

- (void)dealloc {
    [_contactController release];
    [super dealloc];
}

//MARK: - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Some mock data to test
    JEVContact *joe = [JEVContact contactWithName:@"Joseph Veverka" emailAddress:@"JoeVeverka89@gmail.com" phoneNumber:@"123-456-7890"];
    JEVContact *myNameJeff = [JEVContact contactWithName:@"Jeff Jefferson" emailAddress:@"JeffJefferson@gmail.com" phoneNumber:@"123-456-7890"];
    
    [self.contactController addContact:joe];
    [self.contactController addContact:myNameJeff];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.contactController.contacts[indexPath.row].name;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.contactController removeContactAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ShowContactSegue"]) {
        JEVContactDetailViewController *contactDetailVC = segue.destinationViewController;
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        contactDetailVC.contact = self.contactController.contacts[indexPath.row];
    } if ([segue.identifier isEqualToString:@"AddContactSegue"]) {
        JEVContactDetailViewController *contactDetailVC = segue.destinationViewController;
        contactDetailVC.conctactController = self.contactController;
    }
}
@end
