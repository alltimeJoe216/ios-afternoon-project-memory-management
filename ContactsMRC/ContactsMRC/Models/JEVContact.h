//
//  JEVContact.h
//  ContactsMRC
//
//  Created by Joe Veverka on 7/23/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JEVContact : NSObject

@property (nonatomic, copy) NSString *name;
@property(nonatomic, copy) NSString *emailAddress;
@property (nonatomic, copy) NSString *phoneNumber;

- (instancetype)initWithName:(NSString *)name
                emailAddress:(NSString *)emailAddress
                 phoneNumber:(NSString *)phoneNumber;

+ (instancetype)contactWithName:(NSString *)name
                   emailAddress:(NSString *)emailAddress
                    phoneNumber:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
