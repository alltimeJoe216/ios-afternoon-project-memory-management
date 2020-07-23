//
//  JEVContact.m
//  ContactsMRC
//
//  Created by Joe Veverka on 7/23/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

#import "JEVContact.h"

@implementation JEVContact

- (instancetype)initWithName:(NSString *)name emailAddress:(NSString *)emailAddress phoneNumber:(NSString *)phoneNumber {
    self = [super init];
    if (!self) { return nil; }
    
    _name = [name copy];
    _emailAddress = [emailAddress copy];
    _phoneNumber = [phoneNumber copy];
    
    return self;
}

-(void)dealloc {
    [_name release];
    [_emailAddress release];
    [_phoneNumber release];
    
    [super dealloc];
}

+ (instancetype)contactWithName:(NSString *)name
                   emailAddress:(NSString *)emailAddress
                    phoneNumber:(NSString *)phoneNumber {
    return [[[JEVContact alloc] initWithName:name emailAddress:emailAddress phoneNumber:phoneNumber] autorelease];
}

- (void)setName:(NSString *)name {
    if (name == _name) { return; }
    
    [_name release];
    _name = [name copy];
}

- (void)setEmailAddress:(NSString *)emailAddress {
    if (emailAddress == _emailAddress) { return; }
    
    [_emailAddress release];
    _emailAddress = [emailAddress copy];
}

- (void)setPhoneNumber:(NSString *)phoneNumber {
    if (phoneNumber == _phoneNumber)  { return; }
    
    [_phoneNumber release];
    _phoneNumber = [phoneNumber copy];
}


@end
