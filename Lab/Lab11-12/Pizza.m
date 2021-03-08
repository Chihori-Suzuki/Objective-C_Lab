//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by 鈴木ちほり on 2021/03/01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza


- (instancetype) initWithSize: (PizzaSize) size toppings: (NSArray *) toppings {
    self = [super init];
    if (self) {
        self.size = size;
        self.toppings  = toppings;
    }
    return self;
}

+ (instancetype) pizzaWithSize: (PizzaSize) size toppings: (NSArray *) toppings {
    return [[Pizza alloc] initWithSize:size toppings:toppings];
}

+ (Pizza *) largePepperoni {
    return [Pizza pizzaWithSize:large toppings:@[@"tomato", @"sauce", @"mozzeralla", @"cheese", @"pepperonni"]];
}

+ (Pizza *) meatLoversWithSize:(PizzaSize)size {
    return [Pizza pizzaWithSize:size toppings:@[@"meat"]];
}

+ (PizzaSize) sizeFromString: (NSString *) strOrig {
    PizzaSize size;
    
    NSString *str = strOrig.lowercaseString;
    if ([str isEqualToString:@"small"]) {
        size = small;
    }
    else if ([str isEqualToString:@"medium"]) {
        size = medium;
    }
    else if ([str isEqualToString:@"large"]) {
        size = large;
    }
    else {
        size = NO;
    }
    return size;
}

+ (NSString *) stringFromSize: (PizzaSize) size {
    NSString *str;
    if (size == small) {
        str = @"small";
    }
    else if (size == medium) {
        str = @"medium";
    }
    else if (size == large) {
        str = @"large";
    }
    else {
        str = NULL;
    }
    return str;
}
- (PizzaSize)getSizeOfPizza:(NSString *) size {
    PizzaSize sizeOfPizza;
    if ([size isEqualToString:@"small"]) {
        sizeOfPizza = small;
    } else if ([size isEqualToString:@"medium"]) {
        sizeOfPizza = medium;
    } else if ([size isEqualToString:@"large"]) {
        sizeOfPizza = large;
    } else {
        sizeOfPizza = NO;
    }
    return sizeOfPizza;
}


- (NSArray *)getTopping:(NSArray *) toppings {
    self.toppings = toppings;

    return self.toppings;
}

@end
