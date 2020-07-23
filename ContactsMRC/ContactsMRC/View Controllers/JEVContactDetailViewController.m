//
//  JEVContactDetailViewController.m
//  ContactsMRC
//
//  Created by Joe Veverka on 7/23/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

#import "JEVContactDetailViewController.h"
#import "JEVContact.h"
#import "JEVContactController.h"

@interface JEVContactDetailViewController ()


@property (weak, nonatomic) UIBarButtonItem *saveButton;

//MARK: - Outlets
@property (retain, nonatomic) IBOutlet UILabel *nameLabel;
@property (retain, nonatomic) IBOutlet UILabel *emailLabel;
@property (retain, nonatomic) IBOutlet UILabel *phoneLabel;

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;


@end

@implementation JEVContactDetailViewController

//MARK: - Dealloc All
- (void)dealloc {
    [_contactController release];
    [_contact release];
    [_nameLabel release];
    [_emailLabel release];
    [_phoneLabel release];
    [_nameTextField release];
    [_emailTextField release];
    [_phoneTextField release];
    [super dealloc];
}

//MARK: - LifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];
}

@end
