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

@property PizzaSize size;
@property NSArray *toppings;

- (instancetype) initWithSize: (PizzaSize) size toppings: (NSArray *) toppings;
+ (instancetype) pizzaWithSize: (PizzaSize) size toppings: (NSArray *) toppings;
+ (Pizza *) largePepperoni;
+ (Pizza *) meatLoversWithSize:(PizzaSize)size;
+ (PizzaSize) sizeFromString: (NSString *) str;

- (NSArray *)getTopping:(NSArray *) toppings;

@end

NS_ASSUME_NONNULL_END
