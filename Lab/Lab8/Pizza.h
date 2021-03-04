//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by 鈴木ちほり on 2021/03/01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject

@property (nonatomic) enum PizzaSize {Small, Medium, Large} size;
@property NSMutableArray *toppings;

- (instancetype)initWithSize:(enum PizzaSize) size AndTopping:(NSMutableArray *) toppings;

@end

NS_ASSUME_NONNULL_END
