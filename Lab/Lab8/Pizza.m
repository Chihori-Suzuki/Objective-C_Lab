//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by 鈴木ちほり on 2021/03/01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza


- (instancetype)initWithSize:(enum PizzaSize) size AndTopping:(NSMutableArray *) toppings
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

- (enum PizzaSize)getSize:(NSString *) size {
    enum PizzaSize sizeOfPizza;
    if ([size isEqualToString:@"small"]) {
        sizeOfPizza = Small;
    } else if ([size isEqualToString:@"medium"]) {
        sizeOfPizza = Medium;
    } else if ([size isEqualToString:@"large"]) {
    sizeOfPizza = Large;
    } else {
        return nil;
    }
    return sizeOfPizza;
}

- (NSMutableArray *)getTopping:(NSMutableArray *) toppings {
    self.toppings = toppings;

    return self.toppings;
}

@end
