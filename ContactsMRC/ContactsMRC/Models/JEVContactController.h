//
//  JEVContactController.h
//  ContactsMRC
//
//  Created by Joe Veverka on 7/23/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JEVContact;

NS_ASSUME_NONNULL_BEGIN

@interface JEVContactController : NSObject

@property (nonatomic, retain, readonly) NSArray<JEVContact *> *contacts;

- (void)addContact:(JEVContact *)contact;
- (void)removeContactAtIndex:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
