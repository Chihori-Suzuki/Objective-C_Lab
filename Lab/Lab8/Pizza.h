//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by 鈴木ちほり on 2021/03/01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    small,
    medium,
    large,
} PizzaSize;

@interface Pizza : NSObject

@property NSMutableArray *toppings;

- (instancetype)initWithSize:(PizzaSize) size AndTopping:(NSMutableArray *) toppings;



@end

NS_ASSUME_NONNULL_END
