//
//  main.m
//  FoodTruck
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "Restaurant.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        // create instances of your delegate class
        Cook *cook = [[Cook alloc] init];
        Restaurant *restaurant = [[Restaurant alloc] init];
        
        // set truckA and truckB's delegate to your new instance.

        truckA.delegate = cook;
        truckB.delegate = cook;

        truckA.delegate = restaurant;
        truckB.delegate = restaurant;
        
        [truckA serve:10];
        [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];
        
    }
    return 0;
}
