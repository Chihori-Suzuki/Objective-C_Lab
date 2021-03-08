//
//  SecondManager.m
//  Lab11
//
//  Created by 鈴木ちほり on 2021/03/07.
//

#import "SecondManager.h"

@implementation SecondManager

-(BOOL)kitchenShouldUpgradeOrder:(id)kitchen {
    NSLog(@"nice things");
    return YES;
}

- (BOOL)kitchen:(id)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(nonnull NSArray *)toppings {
    return YES;
}


@end
