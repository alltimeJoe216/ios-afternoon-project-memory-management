//
//  JEVContactController.m
//  ContactsMRC
//
//  Created by Joe Veverka on 7/23/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

#import "JEVContactController.h"

@interface JEVContactController ()

@property (nonatomic, retain, readwrite) NSArray<JEVContact *> *contacts;

@end

@implementation JEVContactController

- (instancetype)init {
    self = [super init];
    if (!self)
    {
        return nil;
    }
    
    _contacts = [[NSArray alloc] init];
    
    return self;
}

- (void)dealloc {
    [_contacts release];
    [super dealloc];
}

- (void)addContact:(JEVContact *)contact {
    self.contacts = [self.contacts arrayByAddingObject:contact];
}

- (void)removeContactAtIndex:(NSInteger)index {
    NSMutableArray *mutableContacts = [NSMutableArray arrayWithArray:self.contacts];
    [mutableContacts removeObject:index];
    self.contacts = [NSArray arrayWithArray:mutableContacts];
}

@end
