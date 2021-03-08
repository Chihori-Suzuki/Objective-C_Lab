//
//  FirstManager.m
//  Lab11
//
//  Created by 鈴木ちほり on 2021/03/07.
//

#import "FirstManager.h"

@implementation FirstManager

- (BOOL)kitchen:(id)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    
    for (NSString *topping in toppings) {
        if ([topping isEqualTo:@"anchovie"]) {
            return NO;
        } else {
            return YES;
        }
    }
    return NO;
}

- (BOOL)kitchenShouldUpgradeOrder:(id)kitchen {
    return NO;
}


@end
