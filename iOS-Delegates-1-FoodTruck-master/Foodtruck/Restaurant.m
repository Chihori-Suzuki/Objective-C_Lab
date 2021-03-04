//
//  Restaurant.m
//  Foodtruck
//
//  Created by 鈴木ちほり on 2021/03/04.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "Restaurant.h"

@implementation Restaurant

- (double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    if ([food isEqualTo:@"bao"]) {
        return 5.0;
    } else {
        return 10.0;
    }
}



@end
