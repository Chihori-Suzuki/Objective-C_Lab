//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    Kitchen *kt = [[Kitchen alloc] init];
    
    if (_delegate) {
        BOOL ktMake = [kt kitchen:self shouldMakePizzaOfSize:large andToppings:toppings];
        BOOL ktUpgrade = [kt kitchenShouldUpgradeOrder:self];
        
        if (ktMake == YES) {
            Pizza *pizza = [[Pizza alloc] initWithSize:size toppings:toppings];
            
            if ([_delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                [_delegate kitchenDidMakePizza:self];
            }
            return pizza;
        }
        return nil;
        
        
    }else {
        return nil;
    }
    
}

- (BOOL)kitchenShouldUpgradeOrder:(id)kitchen {
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"");
}

- (BOOL)kitchen:(id)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(nonnull NSArray *)toppings {
    return YES;
}

@end
