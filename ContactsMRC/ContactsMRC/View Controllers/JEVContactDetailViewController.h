//
//  JEVContactDetailViewController.h
//  ContactsMRC
//
//  Created by Joe Veverka on 7/23/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JEVContact;
@class JEVContactController;

NS_ASSUME_NONNULL_BEGIN

@interface JEVContactDetailViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, retain) JEVContactController *contactController;
@property (nonatomic, retain) JEVContact *contact;

@end

NS_ASSUME_NONNULL_END
